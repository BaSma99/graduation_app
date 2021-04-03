import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Apply extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Apply for training"),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Text(
              "How many Mobile/ Wep-apps did you design?",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
            TextFormField(
              decoration: new InputDecoration(
                hintText: 'Enter your answer',
                labelText: ' ',
                border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(15.0),
                    borderSide: new BorderSide(color: Colors.blueGrey)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "What are the programs/tools you are familiar with?",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
            TextFormField(
              decoration: new InputDecoration(
                hintText: 'Enter your answer',
                labelText: ' ',
                border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(15.0),
                    borderSide: new BorderSide(color: Colors.blueGrey)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "What is last online course you took? ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
            TextFormField(
              decoration: new InputDecoration(
                hintText: 'Enter your answer',
                labelText: ' ',
                border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(15.0),
                    borderSide: new BorderSide(color: Colors.blueGrey)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
              child: Text("Submit Application"),
              color: Colors.blue,
              onPressed: () => {},
            ),
          ],
        ),
      ),
    );
  }
}
