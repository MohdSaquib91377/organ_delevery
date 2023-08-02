import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../res/app_colors.dart';

class TimerScreen extends StatefulWidget {
  final double latitude;
  final double longitude;

  const TimerScreen({Key? key, required this.latitude, required this.longitude})
      : super(key: key);

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  @override
  Widget build(BuildContext context) {
    LatLng _currentLocation = LatLng(widget.latitude, widget.longitude);

    CameraPosition _kInitialPosition = CameraPosition(
        target: _currentLocation, zoom: 11.0, tilt: 0, bearing: 0);

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: GoogleMap(initialCameraPosition: _kInitialPosition),
            ),
            InkWell(
              onTap: (() {
                Navigator.pop(context);
              }),
              child: Positioned(
                top: 10,
                left: 10,
                child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: AppColor.orangeColor,
                    )),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 50),
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(children: [
                  SizedBox(
                    height: 200.0,
                    child: Stack(
                      children: <Widget>[
                        Center(
                          child: Container(
                            width: 200,
                            height: 200,
                            child: new CircularProgressIndicator(
                              value: 1.0,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  AppColor.lightOrange),
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            "20:23",
                            style: TextStyle(
                                color: AppColor.orangeColor,
                                fontSize: 35,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppColor.orangeColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Stop Timer",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),
                  )
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
