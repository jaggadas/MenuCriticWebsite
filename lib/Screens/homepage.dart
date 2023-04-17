import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:menucritic/Screens/dashboard.dart';
import 'package:menucritic/utils/constants.dart';
import 'package:menucritic/utils/googleapi.dart';
import 'package:sizer/sizer.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  String PlaceId = '';

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        body: Stack(children: [
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            decoration: BoxDecoration(
                gradient: bggradient),
          ),
          Center(
            child: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.8,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.9,
              decoration: BoxDecoration(
                  gradient: frontgradient,
                  borderRadius: BorderRadius.circular(20.0)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 80.sp,
                            width: 160.sp,
                            child: SvgPicture.asset(
                                'assets/images/MenuCriticSplashLogo.svg')),
                        SizedBox(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width / 2.5,
                          child: Text(
                            'Nibh quisque suscipit fermentum netus nulla cras porttitor euismod nulla. Orci dictumst nec aliquet id ullamcorper venenatis. ',
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width / 2.5,
                          child: TextField(
                            onChanged: (value) {
                              PlaceId = value;
                            },
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: 'Enter Google/Yelp place ID',
                              hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.5)),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                    width: 1, color: Colors.blueGrey),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              fillColor:
                              Theme
                                  .of(context)
                                  .colorScheme
                                  .secondary,
                            ),
                          ),
                        ),
                        SizedBox(height: 30,),
                        Container(
                          width: MediaQuery.of(context).size.width/2.5,
                          child: Center(
                            child: Container(width: MediaQuery
                                .of(context)
                                .size
                                .width / 5, child: GestureDetector(
                              onTap: () async {
                                //await GoogleApiResponse().getData();
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard(PlaceId: '12345')),);
                              },
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(80),
                                    gradient: myGradient),
                                child: Center(
                                  child: Text(
                                    "Search",
                                    style: TextStyle(
                                        color: Colors.black ,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ), ),
                          ),
                        ),
                        // Container(
                        //   width: MediaQuery.of(context).size.width/2.5,
                        //   child: ElevatedButton(
                        //     onPressed: () { },
                        //     //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                        //     //padding: const EdgeInsets.all(0.0),
                        //     child: Ink(
                        //       decoration: BoxDecoration(
                        //         gradient: myGradient,
                        //         borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        //       ),
                        //       child: Container(
                        //        // constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
                        //         alignment: Alignment.center,
                        //         child: const Text(
                        //           'OK',
                        //           textAlign: TextAlign.center,
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        Spacer(),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Stack(
                            children: <Widget>[
                              SvgPicture.asset(
                                'assets/Images/Visuals.svg',
                                width: 40.sp,
                                height: 60.sp,
                                fit: BoxFit.fill,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      );
    });
  }
}
