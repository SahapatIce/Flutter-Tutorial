import 'package:flutter/material.dart';
import 'package:flutter_demo/route/route.dart';
import 'constant/route_name.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Kanit",
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: LOGIN_SCREEN,
      onGenerateRoute: routeGenerator,
    );
  }
}
