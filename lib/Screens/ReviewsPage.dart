import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:menucritic/utils/ABSAApi.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:pie_chart/pie_chart.dart' as pi;

import '../models/Analysis.dart';
import '../models/Review.dart';
import '../models/ReviewAnalysis.dart';
import '../utils/constants.dart';

class ReviewsPage extends StatefulWidget {
  ReviewsPage({required this.reviews}){
    debugPrint("number of reviews :${reviews.length}");
  }
  List<Review> reviews;
  @override
  State<ReviewsPage> createState() => _ReviewsPageState();
}

class _ReviewsPageState extends State<ReviewsPage> {

  List<Color> colorsPositiveNegative=[Color(0xff1E1E2C),Color(0xff455880)];
  Map<String, double> Categories = {
    "Food":8,
    "Pricing":3,
    "Ambience":9,
    "Service":5
  };// to be generated in code
  List<Color> colorsCategory=[Color(0xff79e06c),Color(0xffeb5146),Colors.blue,Colors.deepOrangeAccent];// to be generated in code
  List<String> positiveCategories=["Ambience","Food"];
  List<String> negativeCategories=["Time","Service","Pricing"];
  int fiveStarReviews=0;
  int fourStarReviews=0;
  int threeStarReviews=0;
  int twoStarReviews=0;
  int oneStarReviews=0;
  List<String> reviews = ["The food was really good, and the pricing was great!","Terrible food, especially the prawn tempura","Service very slow, took an hour for our food to be delivered.",
    "The food was really good, and the pricing was great!","The food was really good, and the pricing was great!",
  ];//to be generated in code
  List<ReviewAnalysis> reviewAnalysis = [];
  bool showSpinner = false;
  List<Color> gradientColors = [
    AppColors.contentColorCyan,
    AppColors.contentColorBlue,
  ];
  Map<String, double> positiveNegativeMap = {
    "Positive":0,
    "Negative":0
  };//to be generated in code
  Widget _buildRatingBar(String ratingText, int ratingCount, int totalReviews, int stars) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("$stars stars",style: TextStyle(color: Color(0xff1E1E2C),fontSize: 16,fontWeight: FontWeight.bold),),
        Container(
          height: 15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xff455880),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value: ratingCount / totalReviews,
              backgroundColor: Colors.transparent,
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xff1E1E2C)),
            ),
          ),
        ),
        SizedBox(height: 10,)

      ],
    );
  }
  Color lighten(Color color, [double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(color);
    final hslLight = hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

    return hslLight.toColor();
  }
  List<Color> lighterShadesOfColor(int n) {
    final List<Color> shades = [];
    final Color baseColor = Color(0xff0a0e1a);
    final double amountPerShade = 0.4 / n;
    for (int i = 0; i < n; i++) {
      shades.add(lighten(baseColor, amountPerShade * i));
    }
    return shades;
  }
  sendReviewsToModel() async {
    showSpinner = true;
    setState(() {

    });
    for(Review review in widget.reviews){
        reviewAnalysis.add(await AbsaAPIResponse().getReviewAnalysis(review.reviewText));
    }
    showSpinner=false;
    setState(() {

    });
  }
  generatePositiveNegative(){

   for(ReviewAnalysis reviewAnal in reviewAnalysis){
     int positive=0;
     int negative=0;
     for(Analysis analysis in reviewAnal.analysis){
       if(analysis.analysisClass ==2){
         positive++;
       }else{
         negative++;
       }
     }
     if(positive>=negative){
       positiveNegativeMap.update('Positive', (value) => value + 1);
     }else{
       positiveNegativeMap.update('Negative', (value) => value + 1);
     }
   }
   setState(() {

   });
  }
  generateStarRating(){
    for(Review review in widget.reviews){
      if(review.rating==5){
        fiveStarReviews++;
      }else if (review.rating==4){
        fourStarReviews++;
      }else if (review.rating==3){
        threeStarReviews++;
      }else if (review.rating==2){
        twoStarReviews++;
      }else if (review.rating==1){
        oneStarReviews++;
      }
    }
    setState(() {

    });
  }
  generateGraphs()async{
    await sendReviewsToModel();
    generatePositiveNegative();
    generateStarRating();
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    generateGraphs();
  }
  @override
  Widget build(BuildContext context) {
    int totalReviews = fiveStarReviews +
        fourStarReviews +
        threeStarReviews +
        twoStarReviews +
        oneStarReviews;
    return Scaffold(backgroundColor: Color(0xffdbdbdb),appBar: AppBar(backgroundColor: Color(0xffF1FAFE),leading: IconButton(onPressed: (){Navigator.pop(context);},
        icon:Icon(Icons.arrow_back_ios_rounded),color: Color(0xff1E1E2C),)),body:
      ModalProgressHUD(inAsyncCall: showSpinner,
        child: Padding(
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
                    dataMap: positiveNegativeMap,
                    animationDuration: Duration(milliseconds: 800),
                    chartLegendSpacing: 32,
                    chartRadius: MediaQuery.of(context).size.width / 6,
                    colorList: colorsPositiveNegative,
                    initialAngleInDegree: 0,
                    chartType: pi.ChartType.ring,
                    ringStrokeWidth: 32,
                    centerText: "${(positiveNegativeMap['Positive']! / (positiveNegativeMap['Positive']! + positiveNegativeMap['Negative']!) * 100)
                        .toStringAsFixed(1)
                        }%",centerTextStyle: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
                    legendOptions: pi.LegendOptions(
                      showLegendsInRow: false,
                      legendPosition: pi.LegendPosition.right,
                      showLegends: true,
                      legendShape: BoxShape.circle,
                      legendTextStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    chartValuesOptions: pi.ChartValuesOptions(showChartValues: false),

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
                                return
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(padding:const EdgeInsets.all(15.0) ,width: double.infinity,
                                            color: index%2==0?Color(0xffF1FAFE):Colors.white,
                                            child: Text("${index+1}. ${reviews[index]}",style: TextStyle(fontSize: 18),)),
                                        Container(height: 2,width: double.infinity,color: Color(0x30adadad),)
                                      ],
                                    ),
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
                        colorList: lighterShadesOfColor(Categories.length),
                        initialAngleInDegree: 0,
                        chartType: pi.ChartType.ring,
                        ringStrokeWidth: 32,
                        centerText: "Categories",centerTextStyle: TextStyle(fontSize: 40),
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
                          showChartValueBackground: false,
                          showChartValues: true,
                          showChartValuesInPercentage: true,
                          showChartValuesOutside: false,
                          decimalPlaces: 0,
                          chartValueStyle: TextStyle(fontSize: 15)
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
                                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                                        color:Color(0x5079e06c)
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
                                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                                        color:Color(0x50e08b6c)
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
              SizedBox(height: 40,),
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
