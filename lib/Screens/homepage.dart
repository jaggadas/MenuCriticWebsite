import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.black,
              Colors.deepPurple.shade900,
              Colors.blue.shade900
            ]
          )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height / 3,
                  child:
                      SvgPicture.asset('assets/images/MenuCriticSplashLogo.svg')),
              SizedBox(
                width: MediaQuery.of(context).size.width/3,
                child: Text(
                    'Nibh quisque suscipit fermentum netus nulla cras porttitor euismod nulla. Orci dictumst nec aliquet id ullamcorper venenatis. ',
                  textAlign: TextAlign.center, style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2.5,
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Enter Google/Yelp place ID',
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(width: 1, color: Colors.blueGrey),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    fillColor: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
              Spacer(),
              SizedBox(width: MediaQuery.of(context).size.width/2, child: Text('Nibh quisque suscipit fermentum netus nulla cras porttitor euismod nulla. Orci, dictumst nec aliquet id ullamcorper venenatis. Nibh quisque suscipit fermentum netus nulla cras porttitor euismod nulla. Orci, dictumst nec aliquet id ullamcorper venenatis. Nibh quisque suscipit ', style: TextStyle(color: Colors.white),)),
              SizedBox(height: 50,)
            ],
          ),
        ),
      ),
    );
  }
}
