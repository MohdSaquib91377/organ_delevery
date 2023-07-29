import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:organ_delivery/res/app_colors.dart';
import 'package:organ_delivery/res/app_images.dart';

class CertificateScareen extends StatefulWidget {
  const CertificateScareen({super.key});

  @override
  State<CertificateScareen> createState() => _CertificateScareenState();
}

class _CertificateScareenState extends State<CertificateScareen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text(
            "Congratulations",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: AppColor.orangeColor),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              certificateCard("11km", AppImages.distence, "Distance Travelled"),
              certificateCard("37m", AppImages.stop_watch, "Time taken")
            ],
          )
        ]),
      ),
    ));
  }
}

Widget certificateCard(String meters, String icon, String text) {
  return Container(
    width: 160,
    height: 80,
    decoration: BoxDecoration(
        color: AppColor.lightOrange, borderRadius: BorderRadius.circular(5)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Text(
              meters.toString(),
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: 20,
            ),
            Image.asset(
              icon.toString(),
              width: 42,
              height: 42,
            ),
          ],
        ),
        Text(
          text.toString(),
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
        )
      ],
    ),
  );
}
