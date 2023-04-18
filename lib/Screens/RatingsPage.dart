import 'package:flutter/material.dart';
import 'package:menucritic/Screens/dashboard.dart';

import '../models/Review.dart';



class RatingsPage extends StatelessWidget {
  RatingsPage({required this.map});
  Map<String,List<Review>> map ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("All Reviews",style: TextStyle(color: Colors.black),),backgroundColor: Color(0xffF1FAFE),leading: IconButton(onPressed: (){Navigator.pop(context);},
      icon:Icon(Icons.arrow_back_ios_rounded),color: Color(0xff1E1E2C),)),
    body: SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: ListView.builder(shrinkWrap: true,itemCount: 5,itemBuilder: (BuildContext context ,int indexx){
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("${5-indexx} star Reviews (${map['${5-indexx}']!.length} reviews)",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),) ,
              SizedBox(height: 10,),
              ListView.builder(shrinkWrap: true,
                  itemCount: map['${5-indexx}']!.length,
                  itemBuilder: (BuildContext context ,int index){
                    return  Container(padding: EdgeInsets.all(10),
                        width: double.infinity,color: index%2==0?Color(0xffF1FAFE):Colors.white,
                        child: Text( '${index+1}. ${map['${5-indexx}']![index].reviewText}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)));

                  }),
              SizedBox(height: 30,),
            ],);
          }),
        )


      ],),
    ),
    );
  }
}
