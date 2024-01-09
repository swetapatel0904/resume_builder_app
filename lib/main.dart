import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_maker_app/screen/home/home_screen.dart';
import 'package:resume_maker_app/utils/app_route.dart';

void main()
{
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: Colors.blue.shade700,
          systemNavigationBarColor: Colors.white
      )
  );
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: app_route,
    )
  );

}