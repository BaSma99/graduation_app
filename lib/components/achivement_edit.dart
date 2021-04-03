import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditAchivement extends StatelessWidget {
  static const routename = "/achivement";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit"),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/achie.png", width: 100, height: 100),
            Text("Upload your Achievements"),
            RaisedButton(
              color: Colors.blue,
              onPressed: () {},
              child: Text('Add your Achievements +',
                  style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
