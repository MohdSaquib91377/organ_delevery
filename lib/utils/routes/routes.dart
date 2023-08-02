import 'package:flutter/material.dart';
import 'package:organ_delivery/utils/routes/routes_name.dart';
import 'package:organ_delivery/view/certificate_screen.dart';
import 'package:organ_delivery/view/delivery_screen.dart';
import 'package:organ_delivery/view/home_screen.dart';
import 'package:organ_delivery/view/login_screen.dart';
import 'package:organ_delivery/view/register_screen.dart';

import '../../main.dart';
import '../../view/timer_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case RoutesName.login:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case RoutesName.register:
        return MaterialPageRoute(builder: (context) => RegisterScreen());
      case RoutesName.delivery:
        return MaterialPageRoute(builder: (context) => DeliveryScreen());
      case RoutesName.certificate:
        return MaterialPageRoute(builder: (context) => CertificateScareen());
      case RoutesName.main:
        return MaterialPageRoute(builder: (context) => MyHomePage());
      case RoutesName.timer:
        final args = settings.arguments as Map<String, double>;
        return MaterialPageRoute(
            builder: (context) => TimerScreen(
                  latitude: args["latitude"] ?? 0.0,
                  longitude: args["longitude"] ?? 0.0,
                ));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(body: Text("No routes Found !!")));
    }
  }
}
