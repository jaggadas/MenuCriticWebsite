import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart' as pi;

import '../utils/constants.dart';

class ReviewsPage extends StatefulWidget {
  const ReviewsPage({Key? key}) : super(key: key);

  @override
  State<ReviewsPage> createState() => _ReviewsPageState();
}

class _ReviewsPageState extends State<ReviewsPage> {
  List<Color> gradientColors = [
    AppColors.contentColorCyan,
    AppColors.contentColorBlue,
  ];
  Map<String, double> PositiveNegative = {
    "Positive":8,
    "Negative":3
  };//to be generated in code
  List<Color> colorsPositiveNegative=[Color(0xff79e06c),Color(0xffeb5146)];
  Map<String, double> Categories = {
    "Food":8,
    "Pricing":3,
    "Ambience":9,
    "Service":5
  };// to be generated in code
  List<Color> colorsCategory=[Color(0xff79e06c),Color(0xffeb5146),Colors.blue,Colors.deepOrangeAccent];// to be generated in code
  List<String> positiveCategories=["Ambience","Food"];
  List<String> negativeCategories=["Time","Service","Pricing"];

  List<String> reviews = ["The food was really good, and the pricing was great!","Terrible food, especially the prawn tempura","Service very slow, took an hour for our food to be delivered.",
  "Food mediocre, but the ambience was great!"
  ];//to be generated in code
  Widget _buildRatingBar(String ratingText, int ratingCount, int totalReviews, int stars) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("$stars stars",style: TextStyle(color: Color(0xff1E1E2C),fontSize: 16,fontWeight: FontWeight.bold),),
        LinearProgressIndicator(minHeight:20,
          value: ratingCount / totalReviews,
          backgroundColor: Color(0xff455880),
          valueColor: AlwaysStoppedAnimation<Color>(Color(0xff1E1E2C),),
        ),
        SizedBox(height: 10,)

      ],
    );
  }
  final int fiveStarReviews=10;
  final int fourStarReviews=20;
  final int threeStarReviews=34;
  final int twoStarReviews=5;
  final int oneStarReviews=2;


  @override
  Widget build(BuildContext context) {
    int totalReviews = fiveStarReviews +
        fourStarReviews +
        threeStarReviews +
        twoStarReviews +
        oneStarReviews;
    return Scaffold(backgroundColor: Color(0xffdbdbdb),appBar: AppBar(backgroundColor: Color(0xff2B3B5C),),body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(children: [

            Row(
              children: [
                BoxWithShadow(
                    title: "Star Rating",buttonTitle: "Open All Reviews ",onPressed: (){},
                    child:
                    // Text('hello'),
                   Column(children: [
                     _buildRatingBar("5 Stars", fiveStarReviews, totalReviews,5),
                     _buildRatingBar("4 Stars", fourStarReviews, totalReviews,4),
                     _buildRatingBar("3 Stars", threeStarReviews, totalReviews,3),
                     _buildRatingBar("2 Stars", twoStarReviews, totalReviews,2),
                     _buildRatingBar("1 Star", oneStarReviews, totalReviews,1),
                   ],)
                ),
              ],
            ),
            SizedBox(height: 8,),
            Row(
              children: [
                BoxWithShadow(
                    title: "Positivity of Reviews",buttonTitle: "Open All Reviews ",onPressed: (){},
                    child:
                pi.PieChart(
                  dataMap: PositiveNegative,
                  animationDuration: Duration(milliseconds: 800),
                  chartLegendSpacing: 32,
                  chartRadius: MediaQuery.of(context).size.width / 6,
                  colorList: colorsPositiveNegative,
                  initialAngleInDegree: 0,
                  chartType: pi.ChartType.ring,
                  ringStrokeWidth: 32,
                  centerText: "Positivity",
                  legendOptions: pi.LegendOptions(
                    showLegendsInRow: false,
                    legendPosition: pi.LegendPosition.right,
                    showLegends: true,
                    legendShape: BoxShape.circle,
                    legendTextStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  chartValuesOptions: pi.ChartValuesOptions(
                    showChartValueBackground: true,
                    showChartValues: true,
                    showChartValuesInPercentage: true,
                    showChartValuesOutside: false,
                    decimalPlaces: 1,
                  ),
                  // gradientList: ---To add gradient colors---
                  // emptyColorGradient: ---Empty Color gradient---
                )
                ),
                SizedBox(width: 8,),
                BoxWithShadow(
                    title: "All Reviews",buttonTitle: "Open All Reviews ",onPressed: (){},
                    child:ListView.builder(shrinkWrap: true,
                        itemCount: reviews.length,
                        itemBuilder: (BuildContext context ,int index){
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                color:Color(0xffe8c9b7)
                                ),padding: EdgeInsets.all(10),child: Text("${index+1}. ${reviews[index]}",style: TextStyle(fontSize: 18),)),
                              );
                        }
                    )
                ),
              ],
            ),
            SizedBox(height: 8,),
            Row(
              children: [
                BoxWithShadow(
                    title: "Categories of Aspects",buttonTitle: "Open All Reviews ",onPressed: (){},
                    child:
                    // Text('hello'),
                    pi.PieChart(
                      dataMap: Categories,
                      animationDuration: Duration(milliseconds: 800),
                      chartLegendSpacing: 32,
                      chartRadius: MediaQuery.of(context).size.width / 6,
                      colorList: colorsCategory,
                      initialAngleInDegree: 0,
                      chartType: pi.ChartType.ring,
                      ringStrokeWidth: 32,
                      centerText: "Categories",
                      legendOptions: pi.LegendOptions(
                        showLegendsInRow: false,
                        legendPosition: pi.LegendPosition.right,
                        showLegends: true,
                        legendShape: BoxShape.circle,
                        legendTextStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      chartValuesOptions: pi.ChartValuesOptions(
                        showChartValueBackground: true,
                        showChartValues: true,
                        showChartValuesInPercentage: true,
                        showChartValuesOutside: false,
                        decimalPlaces: 1,
                      ),
                      // gradientList: ---To add gradient colors---
                      // emptyColorGradient: ---Empty Color gradient---
                    )
                ),
                SizedBox(width: 8,),
                BoxWithShadow(
                    title: "Positivity of Categories",buttonTitle: "Open All Reviews ",onPressed: (){},
                    child:
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(width:280,
                          child: ListView.builder(shrinkWrap: true,
                              itemCount: positiveCategories.length,
                              itemBuilder: (BuildContext context ,int index){
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                      color:Color(0xff79e06c)
                                  ),padding: EdgeInsets.all(10),child: Text("${index+1}. ${positiveCategories[index]}",style: TextStyle(fontSize: 18),)),
                                );
                              }
                          ),
                        ),
                        Container(width: 280,
                          child: ListView.builder(shrinkWrap: true,
                              itemCount: negativeCategories.length,
                              itemBuilder: (BuildContext context ,int index){
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                      color:Color(0xffe08b6c)
                                  ),padding: EdgeInsets.all(10),child: Text("${index+1}. ${negativeCategories[index]}",style: TextStyle(fontSize: 18),)),
                                );
                              }
                          ),
                        ),
                      ],
                    )
                ),
              ],
            ),
            SizedBox(height: 10,)
          ],),
        ),
      )
      ,);
  }
}


class BoxWithShadow extends StatelessWidget {

  Widget child;
  String title;
  String buttonTitle;
  VoidCallback onPressed;


  BoxWithShadow({required this.child,required this.title, required this.buttonTitle, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(color: Colors.white,elevation: 20,borderRadius: BorderRadius.circular(10),child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(height: MediaQuery.of(context).size.height/2,
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  GestureDetector(onTap: onPressed,child: Text(buttonTitle,style: TextStyle(color: Colors.blueAccent),)),
                ],
              ),
              SizedBox(height: 30,),
              child,
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
      ),
    );
  }
}
