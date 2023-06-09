import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:menucritic/Screens/dashboard.dart';
import 'package:menucritic/utils/constants.dart';
import 'package:menucritic/utils/googleapi.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/testreview.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  bool showSpinner = false;
  String PlaceId = '';
  String errormsg = '';
  TextEditingController googleIdController= TextEditingController();
  apiResponse() async {
    if (testmode) {
      TestAPIResponse testAPIResponse = TestAPIResponse();
      var reviews = testAPIResponse.getReviewData();
      return reviews;
    } else {
      GoogleApiResponse googleApiResponse =
          GoogleApiResponse(googleID: 'ChIJHZXfuyi_wjsRcLcj8yo_ub4');
      var reviews = await googleApiResponse.getReviewData() != null
          ? googleApiResponse.getReviewData().toString()
          : '';
      return reviews;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(backgroundColor: Color(0xFFF2F2F2),
        body: ModalProgressHUD(
          inAsyncCall: showSpinner,
          child: Container(
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(height: MediaQuery.of(context).size.height,
                color: Color(0xFFF2F2F2),
                width: MediaQuery.of(context).size.width / 2,
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 50,),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                          height: 30.sp,
                          width: 120.sp,
                          child: SvgPicture.asset(
                            'assets/images/MenuCriticHomepageLogo.svg',
                            color: Color(0xFF27293D),
                          )),
                    ),
                    SizedBox(height: 50,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: Center(
                        child:Text('Uncover the hidden sentiment of restaurant reviews and visualize customer preferences with ease.'
                        ,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                        )
                      ),
                    ),
                    SizedBox(height: 50,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.8,
                      child: TextField(
                        onChanged: (value) {
                          PlaceId = value;
                        },
                        controller: googleIdController,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Color(0xFF2E3048)),
                        decoration: InputDecoration(
                          hintText: 'Enter Google/Yelp place ID',
                          hintStyle: TextStyle(
                              color: Colors.grey),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                width: 1, color: Colors.blueGrey),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Color(0xFF2E3048)),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          fillColor:
                          Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ),
                    Visibility(
                        visible: errormsg == '' ? false : true,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              errormsg,
                              style: TextStyle(color: Colors.red),
                            )
                          ],
                        )),
                    SizedBox(height: 50,),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 5,
                          child: GestureDetector(
                            onTap: () async {
                              //await GoogleApiResponse().getData();
                              showSpinner = true;
                              setState(() {});
                              var reviews = await apiResponse();
                              showSpinner = false;
                              setState(() {});
                              if(googleIdController.text=="")
                              {
                                errormsg='Please enter a valid google place ID';
                              }
                              else
                                {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Dashboard(
                                          reviews: reviews ?? [],
                                        )),
                                  );
                                }

                            },
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(80),
                                  gradient: frontgradient),
                              child: Center(
                                child: Text(
                                  "Search",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Center(
                          child: new RichText(
                            text: new TextSpan(
                              children: [
                                new TextSpan(
                                  text:
                                  'To find the Google Place ID of a place,  ',
                                  style: new TextStyle(color: Color(0xFF3A5271), fontSize: 4.sp),
                                ),
                                new TextSpan(
                                  text: 'Click here',
                                  style: new TextStyle(color: Colors.blue, fontSize: 4.sp),
                                  recognizer: new TapGestureRecognizer()
                                    ..onTap = () {
                                      launchUrl(Uri.parse(
                                          'https://developers.google.com/maps/documentation/javascript/examples/places-placeid-finder'));
                                    },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),

                  ],
                ),
              ),
              Container(

                  child: Image.asset(
                    'assets/Images/Background.png',
                  )),
            ],
          )),
        ),
      );
    });
  }
}
