import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:taskapi/screens/home/home.dart';
import 'package:taskapi/screens/sing_in/signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(460, 848),
      builder: (BuildContext context, Widget? widget) {
        SystemChrome.setPreferredOrientations(
            [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
        return const GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: SignIn(),
        );
      },
    );
  }
}
