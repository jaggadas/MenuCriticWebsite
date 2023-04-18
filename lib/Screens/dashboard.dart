import 'package:flutter/material.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart' as sd;
import 'package:google_fonts/google_fonts.dart';
import 'package:menucritic/Screens/ReviewsPage.dart';
import 'package:menucritic/utils/ABSAApi.dart';
import 'package:menucritic/utils/googleapi.dart';
import 'package:menucritic/utils/testreview.dart';

import '../models/Review.dart';
import '../models/ReviewAnalysis.dart';
import '../utils/constants.dart';
class Dashboard extends StatefulWidget {
  Dashboard({required this.reviews});
  List<Review> reviews;
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final sd.SideMenuController _controllerSideMenu = sd.SideMenuController();
  final PageController _controller = PageController();
  bool isOpen = true;
  sd.SideMenuDisplayMode mode = sd.SideMenuDisplayMode.open;
  List<ReviewAnalysis>? reviewAnalysis;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          sd.SideMenu(

            title: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              child: Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                color: const Color(0xff1E1E2C),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: SizedBox(
                          width: 300,
                          child: InkWell(
                              onTap: () {
                                setState(() {
                                  mode = sd.SideMenuDisplayMode.open;
                                });
                              },
                              child:Text("MenuCritic",style: GoogleFonts.robotoSlab(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),),)),
                    )

                  ],
                ),
              ),
            ),
            onDisplayModeChanged: (mode) {
              debugPrint("$mode");
            },
            showToggle: false,
            style: sd.SideMenuStyle(
              openSideMenuWidth: 240,
              compactSideMenuWidth: 60,
              backgroundColor: const Color(0xff2B3B5C),
              displayMode: mode,
              selectedColor: const Color(0xff455880),
              selectedIconColor: Colors.white,
              unselectedIconColor: Colors.white,
              selectedTitleTextStyle:
              GoogleFonts.poppins(color: Colors.white, fontSize: 15),
              unselectedTitleTextStyle:
              GoogleFonts.poppins(color: Colors.white, fontSize: 15),
              iconSize: 20,
              itemOuterPadding: const EdgeInsets.all(8),
              itemInnerSpacing: 10,
            ),
            items: [
              sd.SideMenuItem(
                  priority: 0,
                  title: 'REVIEWS',
                  icon: const Icon(Icons.reviews),
                  onTap: (val,controller) {
                    controller.changePage(0) ;
                    _controller.jumpToPage(0);
                  }),
              sd.SideMenuItem(
                  priority: 1,
                  title: 'ABOUT US',
                  icon: const Icon(Icons.people),
                  onTap: (val,controller) {
                    controller.changePage(1) ;
                    _controller.jumpToPage(1);
                  }),

            ],
            controller: _controllerSideMenu,
          ),
          Expanded(
              child: PageView(
                controller: _controller,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                ReviewsPage(reviews: widget.reviews,),
                  Container(),

                ],
              ))
        ],
      ),
    );
  }

  _isOpen() {
    if (mode == sd.SideMenuDisplayMode.compact) {
      return 40;
    } else {
      return 70;
    }
  }

  dynamic analysisResult() async{
    AbsaAPIResponse absaAPIResponse= AbsaAPIResponse();
  }
}
