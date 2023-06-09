import 'package:flutter/material.dart';
import 'package:menucritic/Screens/ReviewsPage.dart';
import 'package:menucritic/Screens/dashboard.dart';

import '../models/Review.dart';



class PositiveReviewsPage extends StatelessWidget {
  PositiveReviewsPage({required this.reviews});
  Map<String,List<String>> reviews ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("All Reviews",style: TextStyle(color: Colors.black),),backgroundColor: Color(0xffF1FAFE),leading: IconButton(onPressed: (){Navigator.pop(context);},
      icon:Icon(Icons.arrow_back_ios_rounded),color: Color(0xff1E1E2C),)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

            SizedBox(height: MediaQuery.of(context).size.height/2,
              child: BoxWithShadowHeightless(
                title: "Positive Reviews (${reviews['Positive']!.length} reviews)",
                // buttonTitle: '',
                // onPressed: () {  },
                child:
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: ListView.builder(shrinkWrap: true,itemCount: reviews['Positive']!.length,itemBuilder: (BuildContext context ,int index){
                        return  Container(padding: EdgeInsets.all(10),
                            width: double.infinity,color: index%2==0?Color(0xffF1FAFE):Colors.white,
                            child: Text( '${index+1}. ${reviews['Positive']![index]}',style: Theme.of(context).textTheme.bodyLarge));
                      }),
                    )
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(height: MediaQuery.of(context).size.height/2,
              child: BoxWithShadowHeightless(
                title: "Negative Reviews (${reviews['Negative']!.length} reviews)",
                // buttonTitle: '',
                // onPressed: () {  },
                child:
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: ListView.builder(shrinkWrap: true,itemCount: reviews['Negative']!.length,itemBuilder: (BuildContext context ,int index){
                        return  Container(padding: EdgeInsets.all(10),
                            width: double.infinity,color: index%2==0?Color(0xffF1FAFE):Colors.white,
                            child: Text( '${index+1}. ${reviews['Negative']![index]}',style: Theme.of(context).textTheme.bodyLarge));
                      }),
                    ),
              ),
            )
          ],),
        ),
      ),
    );
  }
}
