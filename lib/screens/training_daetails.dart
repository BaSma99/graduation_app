import 'package:flutter/material.dart';
import 'package:graduation_app/screens/HomePageScreen.dart';
import 'package:graduation_app/screens/saved.dart';
import 'package:graduation_app/components/courses.dart';
import 'package:graduation_app/screens/apply.dart';

class TrainingDetails extends StatefulWidget {
  static const String routeName = '/trainingDetails';

  final trainingName;
  final companyPicture;
  final companyName;
  final trainingState;
  final trainingLocation;
  final trainingAbout;
  final trainingRequirement;
  final salary;
  final vacancies;

  TrainingDetails(
      this.trainingName,
      this.companyPicture,
      this.companyName,
      this.trainingState,
      this.trainingLocation,
      this.trainingAbout,
      this.trainingRequirement,
      this.salary,
      this.vacancies);

  // final detailedTrainingName;
  // final detailedCompanyName;
  // final detailedCompanyPicture;
  // final detailedTrainingState;
  // final detailedTrainingLocation;
  // final detailedTraningAbout;
  // final detailedTrainingRequirement;
  // final detailedSalary;
  // final detailedVacancies;
  // TrainingDetails({
  //   this.detailedTrainingName,
  //   this.detailedCompanyPicture,
  //   this.detailedCompanyName,
  //   this.detailedTrainingState,
  //   this.detailedTrainingLocation,
  //   this.detailedTraningAbout,
  //   this.detailedTrainingRequirement,
  //   this.detailedSalary,
  //   this.detailedVacancies,
  // });
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
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.companyPicture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(
                    widget.trainingName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text(widget.trainingLocation,
                            style: TextStyle(
                              color: Colors.grey,
                            )),
                      ),
                      Expanded(
                        child: new Text(
                          widget.trainingState,
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
            ),
          ),

          Divider(
            color: Colors.blue,
          ),
          ListTile(
            title: Text(
              "Company Name",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            subtitle: new Text(
              widget.companyName,
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
              widget.trainingRequirement,
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
              widget.trainingAbout,
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
              "Salary",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            subtitle: new Text(
              widget.salary,
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
