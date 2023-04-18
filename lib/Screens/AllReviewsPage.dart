import 'package:flutter/material.dart';
import 'package:menucritic/Screens/ReviewsPage.dart';
import 'package:menucritic/Screens/dashboard.dart';

import '../models/Review.dart';



class AllReviewsPage extends StatelessWidget {
  AllReviewsPage({required this.reviews});
  List<Review> reviews ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("All Reviews",style: TextStyle(color: Colors.black),),backgroundColor: Color(0xffF1FAFE),leading: IconButton(onPressed: (){Navigator.pop(context);},
      icon:Icon(Icons.arrow_back_ios_rounded),color: Color(0xff1E1E2C),)),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: BoxWithShadowHeightless(
              title: 'All Reviews List',
              child: ListView.builder(shrinkWrap: true,itemCount: reviews.length,itemBuilder: (BuildContext context ,int index){
                return  Container(padding: EdgeInsets.all(10),
                    width: double.infinity,color: index%2==0?Color(0xffF1FAFE):Colors.white,
                    child: Text( '${index+1}. ${reviews[index].reviewText}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)));



              }),
            ),
          )


        ],),
      ),
    );
  }
}
