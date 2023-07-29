import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:organ_delivery/res/app_colors.dart';
import 'package:organ_delivery/res/app_images.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List profile = [
    {'name': "Organ delivered", 'value': '20'},
    {'name': "lives saved", 'value': '15'},
    {'name': "Average time", 'value': '21 min'}
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                child: Text(
                  "Sign out",
                  style: TextStyle(
                      color: AppColor.orangeColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                alignment: Alignment.centerLeft,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(AppImages.profile),
                  ),
                  Icon(
                    Icons.edit,
                    color: AppColor.grey1,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Inspector Singh",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColor.grey2),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 1,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: profile.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            color: AppColor.lightOrange,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            profile[index]['value'],
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          profile[index]['name'],
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColor.orangeColor),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 15,
                    );
                  },
                ),
              ),
              Expanded(
                flex: 4,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    profileInfoCard(
                        AppImages.person, 'Name', 'Inspector Singh'),
                    profileInfoCard(AppImages.policeId, 'Police ID', '007'),
                    profileInfoCard(
                        AppImages.location, 'District', 'Dholakpur (110037)'),
                    profileInfoCard(
                        AppImages.calender, 'Date Registered', '22-07-2023'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget profileInfoCard(String image, String title, String subTitle) {
  return Column(
    children: [
      Row(
        children: [
          Image.asset(image.toString()),
          SizedBox(
            width: 5,
          ),
          Text(
            title.toString(),
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColor.grey2),
          )
        ],
      ),
      Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              subTitle.toString(),
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColor.orangeColor),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
    ],
  );
}
