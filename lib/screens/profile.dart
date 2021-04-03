import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_app/components/achivement_edit.dart';
import 'package:graduation_app/components/edit_activities.dart';
import 'package:graduation_app/components/edit_experience.dart';
import 'package:graduation_app/components/drawer.dart';
import 'package:graduation_app/screens/saved.dart';
import 'package:graduation_app/components/courses.dart';

class Profile extends StatelessWidget {
  static const routename = "profile";
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
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage("add you image URL here "),
                        fit: BoxFit.cover)),
                child: Container(
                  width: double.infinity,
                  child: Container(
                    alignment: Alignment(0.0, 2.5),
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/creatingprofile.png"),
                      radius: 60.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                "Nehal Mohsen",
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.blueGrey,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Egypt, Elmounfia",
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black45,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Mobile Developer",
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black45,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text(
                  "UI / UX",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black45,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w300),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "General Info:",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 22.0,
                            fontWeight: FontWeight.w600),
                      ),
                      ListTile(
                        title: Text(
                          "Age : 20",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      Divider(
                        thickness: 3,
                      ),
                      ListTile(
                        title: Text(
                          "Experience: No experience · Entry Level",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      Divider(
                        thickness: 3,
                      ),
                      ListTile(
                        title: Text(
                          "Minimum Salary: Confidential",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      Divider(
                        thickness: 3,
                      ),
                      ListTile(
                        title: Text(
                          "Job Search Status: Actively searching",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Contact Info:",
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w600),
                          ),
                          ListTile(
                            trailing: Icon(Icons.phone_android),
                            title: Text("0100000000"),
                          ),
                          Divider(
                            thickness: 3,
                          ),
                          ListTile(
                            trailing: Icon(Icons.email_outlined),
                            title: Text("nehal.moh@gmail.com"),
                          ),
                          Divider(
                            thickness: 3,
                          ),
                          ListTile(
                            trailing: Icon(Icons.file_upload),
                            title: Text("Upload Your Cv"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/experience.png'),
                        ),
                        title: Text("Upload your work experience"),
                        subtitle: Text("Add your experience +"),
                        trailing: Icon(Icons.add),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditExperience()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/edu.png'),
                        ),
                        title:
                            Text("Bachelor's Degree in Software Engineering"),
                        subtitle: Text("Monfya university"),
                        trailing: Icon(Icons.add),
                      ),
                      Divider(
                        thickness: 3,
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/edu.png'),
                        ),
                        title: Text("High School - Thanaweya Amma"),
                        subtitle: Text("El-twheed islamic private schools"),
                        trailing: Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/act.png'),
                        ),
                        title: Text("Upload your last Activities"),
                        subtitle: Text("Add your Activities +"),
                        trailing: Icon(Icons.add),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditActivities()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/achie.png'),
                        ),
                        title: Text("Upload your Achievements"),
                        subtitle: Text("Add your Achievements +"),
                        trailing: Icon(Icons.add),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditAchivement()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
