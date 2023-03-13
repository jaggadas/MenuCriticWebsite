import 'package:flutter/material.dart';
import 'package:menucritic/utils/googleapi.dart';
class Dashboard extends StatefulWidget {
  Dashboard({required this.PlaceId});
  String PlaceId;
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    // TODO: implement initState
    apiResponse();
  }
  String responseBody='';
  apiResponse() async{
    GoogleApiResponse googleApiResponse=GoogleApiResponse(googleID: widget.PlaceId);
    responseBody= await googleApiResponse.getData()!= null ? googleApiResponse.getData().toString(): '';
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '$responseBody', style: TextStyle(color: Colors.black),
      ),
    );
  }
}
