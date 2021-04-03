import 'package:flutter/material.dart';
import 'package:graduation_app/screens/saved.dart';
import 'package:graduation_app/components/trainings.dart';

class Courses extends StatefulWidget {
  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
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
      body: new ListView(
        children: <Widget>[
          new Container(
            // height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset("assets/images/saved.png"),
              ),
            ),
          ),
          ListTile(
            title: Center(
              child: Text(
                "You haven't applied to any Training yet!",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          ListTile(
            title: Center(
              child: Text(
                "Not ready to apply? see the opportunities you are interested in.",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          ListTile(
            title: Center(
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => new Training()));
                },
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 0.2,
                child: new Text("Explore Courses"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
