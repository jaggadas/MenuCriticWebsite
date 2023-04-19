import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
  return Sizer(builder: (context, orientation, deviceType)
    {
      return Scaffold(
        body: Container(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Images/aboutusbg.png'),
                    fit: BoxFit.fill
                  )
                ),
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width*0.6,
                  height: MediaQuery.of(context).size.height*0.6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('About Us', style: TextStyle(color: Colors.black, fontSize: 30),),
                      Text('Welcome to our website! We are a team of two members, Vaibhavi Shandilya and R S Jaya Karthi, both of us currently pursuing B.Tech in computer sciences at Manipal University Jaipur. Our website was made as a part of minor project under the guidance of Ms. Shikha Mundra.', style: TextStyle(color: Colors.black, fontSize: 20),),
                      Text('Our website is specifically designed for restaurant owners and customers alike. Restaurant owners can view the analysis of reviews about their restaurants and make changes to improve their business. Customers can browse through the various aspects of a restaurant, such as its ambience, food quality, service, and pricing, and read reviews left by other customers. With our website, customers can make informed decisions and visit a restaurant that meets their expectations.', style: TextStyle(color: Colors.black, fontSize: 20),),
                      Text('We believe that our website is the perfect tool for both restaurant owners and customers. It provides detailed analysis about various aspects of the restaurants and performs analysis based on the data. We are thrilled to be a part of this project and are grateful for the opportunity to share it with you. We hope that you find our website useful and informative. Thank you for visiting!', style: TextStyle(color: Colors.black, fontSize: 20),)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
