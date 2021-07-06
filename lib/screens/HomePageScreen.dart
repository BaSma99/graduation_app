import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:graduation_app/components/drawer.dart';
import 'package:graduation_app/components/trainings.dart';
import 'package:graduation_app/screens/saved.dart';
import 'package:graduation_app/components/courses.dart';

class HomePageScreen extends StatefulWidget {
  static const routeName = "/HomePageScreen";

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

final sliderImages = [
  AssetImage('assets/images/slider/slider1.jpeg'),
  AssetImage('assets/images/slider/slider2.jpeg'),
  AssetImage('assets/images/slider/slider3.jpeg'),
  AssetImage('assets/images/slider/slider4.jpeg'),
  AssetImage('assets/images/slider/slider5.jpeg'),
  AssetImage('assets/images/slider/slider6.jpeg'),
  AssetImage('assets/images/slider/slider7.jpeg'),
];

class _HomePageScreenState extends State<HomePageScreen> {
  Widget imageSlider = Container(
    height: 200.0,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: sliderImages,
      autoplay: true,
      dotSize: 4.0,
      indicatorBgPadding: 2.0,
      dotBgColor: Colors.transparent,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        // backgroundColor: Colors.deepPurple,
        title: Text('Internship'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.save_rounded, color: Colors.white),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Saved()));
              }),
          IconButton(
              icon: Icon(Icons.rounded_corner, color: Colors.white),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Courses()));
              }),
        ],
      ),
      drawer: DrawerComponent(),
      body: ListView(
        children: <Widget>[
          imageSlider,
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Explore New Career Opportunities'),
            ),
          ),
          Container(
            height: 320.0,
            child: Training(),
          ),
        ],
      ),
    );
  }
}
