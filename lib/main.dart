// radio app
// from, Yash Makan: https://www.youtube.com/watch?v=YsixBs2ogDQ&list=PLJh8Hi_cW8DZDLQ9BXVM98ubafDsrv-nx&index=76 // at 42:00
// problem: backend fastapi in pycharm: 127.0.0.1:53221 - "GET /favicon.ico HTTP/1.1" 404 Not Found
// found at: http://127.0.0.1:8000/radios
import 'package:flutter/material.dart';
import 'package:radio_app/constants/colors.dart';
import 'package:radio_app/views/radio_page/radio_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer( // ---> package, read: https://pub.dev/packages/responsive_sizer
      builder: (context, orientation, screenType) {
        return MaterialApp(
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: CustomColors.primary),
            useMaterial3: true,
          ),
          home: const RadioPage(),
        );
      }
    );
  }
}
