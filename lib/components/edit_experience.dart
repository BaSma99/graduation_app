import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditExperience extends StatelessWidget {
  static const routename = "/edit_experience";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Your Exprience"),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/experience.png",
                width: 100, height: 100),
            Text("Upload your work experience"),
            RaisedButton(
              color: Colors.blue,
              onPressed: () {},
              child:
                  Text('Add your experience +', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
