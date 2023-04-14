import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'app.dart';
import 'app_config.dart';
import 'constant/env_reader.dart';


class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

Future<void> mainCommon(AppConfig config) async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  await EasyLocalization.ensureInitialized();
  await EnvironmentReader.initialize(config.flavor);

  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en'), Locale('th')],
        path: 'assets/lang',
        fallbackLocale: const Locale('th'),
        child:const MyApp(
        )),
  );
}