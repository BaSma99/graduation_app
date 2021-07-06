import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:graduation_app/screens/logIn.dart';
import 'package:graduation_app/screens/signUp.dart';
import 'screens/HomePageScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Interbship',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePageScreen(),
      // initialRoute: SignUp.routeName,
      // routes: {
      //   HomePageScreen.routeName: (context) => HomePageScreen(),
      //   //Login.routeName: (context) => Login(),
      // },
    );
  }
}
