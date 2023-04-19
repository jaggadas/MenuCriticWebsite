import 'package:flutter/material.dart';
import 'package:menucritic/Screens/ReviewsPage.dart';
import 'package:menucritic/Screens/dashboard.dart';

import '../models/Review.dart';



class CategoriesPage extends StatelessWidget {
  CategoriesPage({required this.categoriesMap}){
    debugPrint('categoriesLength :${categoriesMap.length}');
  }
  Map<String, List<String>> categoriesMap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("All Reviews",style: TextStyle(color: Colors.black),),backgroundColor: Color(0xffF1FAFE),leading: IconButton(onPressed: (){Navigator.pop(context);},
      icon:Icon(Icons.arrow_back_ios_rounded),color: Color(0xff1E1E2C),)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(shrinkWrap: true,itemCount: categoriesMap.length,itemBuilder: (BuildContext context ,int indexx){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: BoxWithShadowHeightless(child: Container(height: 500,
                child: ListView.builder(shrinkWrap: true,
                    itemCount: categoriesMap[categoriesMap.entries.elementAt(indexx).key]!.length,
                    itemBuilder: (BuildContext context ,int index){
                      return  Container(padding: EdgeInsets.all(10),
                          width: double.infinity,color: index%2==0?Color(0xffF1FAFE):Colors.white,
                          child: Text( '${index+1}. ${categoriesMap[categoriesMap.entries.elementAt(indexx).key]![index]}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)));

                    }),
              ),title: "${categoriesMap.entries.elementAt(indexx).key} (${categoriesMap[categoriesMap.entries.elementAt(indexx).key]!.length} reviews)"
                ,),
            );

          }),
        ),
      ),
    );
  }
}
