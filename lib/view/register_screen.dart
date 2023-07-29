import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:organ_delivery/res/app_images.dart';
import 'package:organ_delivery/utils/routes/routes_name.dart';

import '../res/app_colors.dart';
import '../utils/routes/routes.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _nameController = TextEditingController();
  final _policeIdController = TextEditingController();
  final _districtController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  void dispose() {
    _nameController.dispose();
    _policeIdController.dispose();
    _districtController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20, top: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  AppImages.logo,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                'Sign Up',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: AppColor.orangeColor),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Enter your credentials to continue.',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColor.grey1),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  height: 57,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      prefixIcon: Image.asset(
                        AppImages.person,
                      ),
                      hintText: "Name",
                      hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.grey1),
                      border: InputBorder.none,
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 57,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      prefixIcon: Image.asset(AppImages.policeId),
                      hintText: "Police ID",
                      hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.grey1),
                      border: InputBorder.none,
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 57,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    controller: _districtController,
                    decoration: InputDecoration(
                      prefixIcon: Image.asset(AppImages.location),
                      hintText: "District",
                      hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.grey1),
                      border: InputBorder.none,
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 57,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      prefixIcon: Image.asset(AppImages.lock),
                      hintText: "Password",
                      suffixIcon: Image.asset(AppImages.eye),
                      hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.grey1),
                      border: InputBorder.none,
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 57,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: AppColor.orangeColor,
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(
                    "Sign up",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.center,
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                      text: "Already have an account? ",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.grey1)),
                  TextSpan(
                    text: "Log in",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColor.orangeColor),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushNamed(context, RoutesName.login);
                        // Replace this with the action you want to perform when "Sign up" is clicked.
                        // For example, you can navigate to another screen or open a URL.
                      },
                  )
                ])),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
