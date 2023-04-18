import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:menucritic/Screens/AllReviewsPage.dart';
import 'package:menucritic/Screens/PositiveReviewsPage.dart';
import 'package:menucritic/Screens/RatingsPage.dart';
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
  List<String> positiveCategories=["Ambience","Food"];
  List<String> negativeCategories=["Time","Service","Pricing"];
  int fiveStarReviews=0;
  int fourStarReviews=0;
  int threeStarReviews=0;
  int twoStarReviews=0;
  int oneStarReviews=0;
  Map<String,List<Review>> ratingMap={'5':[],'4':[],'3':[],'2':[],'1':[]};
  Map<String,List<String>> positiveReviewMap={'Positive':[],'Negative':[]};
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
    //TODO: change to default widget.reviews
    for(Review review in widget.reviews)
    // for(int i=0;i<0;i++)
    {
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
       List<String>? val = positiveReviewMap['Positive'];
       val!.add(reviewAnal.reviewText);
       positiveReviewMap.update('Positive', (value) => val);
     }else{
       positiveNegativeMap.update('Negative', (value) => value + 1);
       List<String>? val = positiveReviewMap['Negative'];
       val!.add(reviewAnal.reviewText);
       positiveReviewMap.update('Negative', (value) => val);
     }
   }
   setState(() {

   });
  }
  generateStarRating(){
    for(Review review in widget.reviews){
      if(review.rating==5){
        fiveStarReviews++;
        if(!ratingMap.containsKey('5')){
          ratingMap.putIfAbsent('5', () =>[review]);
        }else{
          List<Review>? val = ratingMap['5'];
          val!.add(review);
          ratingMap.update('5', (value) => val);
        }
      }else if (review.rating==4){
        fourStarReviews++;
        if(!ratingMap.containsKey('4')){
          ratingMap.putIfAbsent('4', () =>[review]);
        }else{
          List<Review>? val = ratingMap['4'];
          val!.add(review);
          ratingMap.update('4', (value) => val);
        }
      }else if (review.rating==3){
        threeStarReviews++;
        if(!ratingMap.containsKey('3')){
          ratingMap.putIfAbsent('3', () =>[review]);
        }else{
          List<Review>? val = ratingMap['3'];
          val!.add(review);
          ratingMap.update('3', (value) => val);
        }
      }else if (review.rating==2){
        twoStarReviews++;
        if(!ratingMap.containsKey('2')){
          ratingMap.putIfAbsent('2', () =>[review]);
        }else{
          List<Review>? val = ratingMap['2'];
          val!.add(review);
          ratingMap.update('2', (value) => val);
        }
      }else if (review.rating==1){
        oneStarReviews++;
        if(!ratingMap.containsKey('1')){
          ratingMap.putIfAbsent('1', () =>[review]);
        }else{
          List<Review>? val = ratingMap['1'];
          val!.add(review);
          ratingMap.update('1', (value) => val);
        }
      }
    }
    setState(() {
      print(ratingMap);
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
        child: showSpinner?Container():Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(children: [

              Row(
                children: [
                  BoxWithShadow(
                      title: "Star Rating",buttonTitle: "Open All Reviews ",onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context){
                      return RatingsPage(map: ratingMap);
                  }));},
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
                      title: "Positivity of Reviews",buttonTitle: "Open All Reviews ",onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return PositiveReviewsPage(reviews: positiveReviewMap);
                        }));

                  },
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
                  )
                  ),
                  SizedBox(width: 8,),
                  BoxWithShadow(
                      title: "All Reviews",buttonTitle: "Open All Reviews ",onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return AllReviewsPage(reviews: widget.reviews);
                        }));
                  },
                      child:SingleChildScrollView(
                        child: ListView.builder(shrinkWrap: true,
                            itemCount: 5,
                            itemBuilder: (BuildContext context ,int index){
                                  return
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(padding:const EdgeInsets.all(15.0) ,width: double.infinity,
                                              color: index%2==0?Color(0xffF1FAFE):Colors.white,
                                              child: Text("${index+1}. ${widget.reviews[index].reviewText}",style: TextStyle(fontSize: 18),)),
                                          Container(height: 2,width: double.infinity,color: Color(0x30adadad),)
                                        ],
                                      ),
                                    );

                            }
                        ),
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
          child: SingleChildScrollView(
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
      ),
    );
  }
}

class BoxWithShadowHeightless extends StatelessWidget {
  Widget child;
  String title;

  BoxWithShadowHeightless({required this.child,required this.title});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Material(
        color: Colors.white,
        elevation: 20,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  child,
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
