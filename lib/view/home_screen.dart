import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:organ_delivery/utils/routes/routes_name.dart';
import 'package:organ_delivery/view/timer_screen.dart';

import '../res/app_colors.dart';
import '../res/app_images.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static final LatLng _currentLocation = LatLng(25.753152, 82.690554);

  static final CameraPosition _kInitialPosition =
      CameraPosition(target: _currentLocation, zoom: 11.0, tilt: 0, bearing: 0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: GoogleMap(initialCameraPosition: _kInitialPosition),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 2,
            color: Colors.white,
            child: Column(children: [
              Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color(
                                  0xFFCCCCCC), // Adjust the shadow color here
                              blurRadius: 5.0,
                              offset: Offset(0,
                                  2), // Adjust the shadow offset (x, y) if needed
                            ),
                          ],
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Image.asset(
                              AppImages.current_location,
                            ),
                            hintText: "current_location",
                            hintStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColor.orangeColor,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFCCCCCC),
                              blurRadius: 5.0,
                              offset: Offset(0, 2), //
                            ),
                          ],
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Image.asset(
                              AppImages.green_location,
                            ),
                            hintText: "Hospital",
                            hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColor.green),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          alignment: Alignment.center,
                          width: 240,
                          height: 45,
                          decoration: BoxDecoration(
                            color: AppColor.whitethick,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text.rich(
                            TextSpan(
                              text: "Estimated Time : 37m",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColor.green,
                              ),
                              children: [
                                WidgetSpan(
                                  child: SizedBox(
                                      width: 50), // Add desired spacing here
                                ),
                                TextSpan(
                                  text: "11KM",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xFFCCCCCC),
                                blurRadius: 5.0,
                                offset: Offset(0, 2)),
                          ],
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Image.asset(
                                AppImages.heart,
                              ),
                              hintText: "Select organ",
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.orangeColor),
                              border: InputBorder.none,
                              suffixIcon: Icon(
                                Icons.arrow_forward_ios,
                                color: AppColor.orangeColor,
                                size: 20,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          // Navigator.pushNamed(context, RoutesName.timer,
                          //     arguments: {
                          //       'latitude': 25.753152,
                          //       'longitude': 82.690554
                          //     });

                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return TimerScreen(
                                latitude: 25.753152, longitude: 82.690554);
                          }));
                        },
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: AppColor.orangeColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "Time",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  )),
            ]),
          ),
        ),
      ],
    )));
  }
}
