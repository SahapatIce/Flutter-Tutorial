import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../constant/route_name.dart';


Route<dynamic> routeGenerator(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Text(
              "ไม่พบหน้า  ${routeSettings.name}",
            ),
          ),
        ),
      );
  }
}
