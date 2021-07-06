import 'package:flutter/material.dart';
import 'package:graduation_app/screens/HomePageScreen.dart';
import 'package:graduation_app/screens/saved.dart';
import 'package:graduation_app/components/courses.dart';
import 'package:graduation_app/screens/apply.dart';

class TrainingDetails extends StatefulWidget {
  static const String routeName = '/trainingDetails';

  final courseName;
  final courseLocation;
  final companyName;
  final skillsNeeded;
  final coursePeriod;
  final vacancies;
  final requirements;
  final availableFor;
  final about;

  TrainingDetails(
      this.courseName,
      this.courseLocation,
      this.companyName,
      this.skillsNeeded,
      this.coursePeriod,
      this.vacancies,
      this.requirements,
      this.availableFor,
      this.about);

  @override
  _TrainingDetailsState createState() => _TrainingDetailsState();
}

class _TrainingDetailsState extends State<TrainingDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blue,
        title: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => new HomePageScreen()));
          },
          child: Text('Internship'),
        ),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          new IconButton(
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
            color: Colors.white70,
            child: ListTile(
              leading: new Text(
                widget.courseName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              title: new Row(
                children: <Widget>[
                  Expanded(
                    child: new Text(widget.courseLocation,
                        style: TextStyle(
                          color: Colors.grey,
                        )),
                  ),
                  Expanded(
                    child: new Text(
                      widget.companyName,
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Divider(
            color: Colors.blue,
          ),
          ListTile(
            title: Text(
              "Skills Needed",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            subtitle: new Text(
              widget.skillsNeeded,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
          Divider(
            color: Colors.blue,
          ),
          ListTile(
            title: new Text(
              "Training Requirements",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            subtitle: new Text(
              widget.requirements,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
          Divider(
            color: Colors.blue,
          ),
          ListTile(
            title: new Text(
              "About Training ",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            subtitle: new Text(
              widget.about,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
          Divider(
            color: Colors.blue,
          ),
          ListTile(
            title: new Text(
              "Vacancies",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            subtitle: new Text(
              widget.vacancies,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
          Divider(
            color: Colors.blue,
          ),
          ListTile(
            title: new Text(
              "Available For",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            subtitle: new Text(
              widget.availableFor,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
          Divider(
            color: Colors.blue,
          ),
          ListTile(
            title: new Text(
              "Course Period",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            subtitle: new Text(
              widget.coursePeriod,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
          Divider(
            color: Colors.blue,
          ),
          //Apply now
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Apply()));
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Apply now"),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.blue,
          ),
          //save
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Save"),
                ),
              ),
            ],
          ),

          Divider(
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
