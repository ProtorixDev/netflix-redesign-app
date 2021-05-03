import 'package:flutter/material.dart';
import 'package:flutter_netflix_redesign_app/NetflixRedesign/netflixhome.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/screenutil_init.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 750),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: NetFlixHome(),
      ),
    );
  }
}
