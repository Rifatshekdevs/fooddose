import 'package:dosse/src/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/splash_page.dart';

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}