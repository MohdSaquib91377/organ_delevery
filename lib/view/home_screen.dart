import 'package:flutter/material.dart';
import 'package:organ_delivery/res/app_colors.dart';
import 'package:organ_delivery/view/delivery_screen.dart';
import 'package:organ_delivery/view/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Text("Home screen"),
    ));
  }
}
