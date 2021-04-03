import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditActivities extends StatelessWidget {
  static const routename = "/edit_activities";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Activities"),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/act.png", width: 100, height: 100),
            Text("Upload your last Activities"),
            RaisedButton(
              color: Colors.blue,
              onPressed: () {},
              child:
                  Text('Add your Activities +', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
