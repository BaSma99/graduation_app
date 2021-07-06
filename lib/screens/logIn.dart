import 'package:flutter/material.dart';
import 'package:graduation_app/components/SizeConfig.dart';

class Login extends StatefulWidget {
  static const routename = 'logIn';
  Login({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login"),
      ),
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 15 * SizeConfig.heightMultiplier,
              ),
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(25.0),
              //   child: Image.asset(
              //     "assets/images/creatingprofile.png",
              //     fit: BoxFit.cover,
              //     height: 120.0,
              //     width: 120.0,
              //   ),
              // ),
              // SizedBox(
              //   height: 5 * SizeConfig.heightMultiplier,
              // ),
              Text(
                "First login",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    fontSize: 4 * SizeConfig.textMultiplier),
              ),
              SizedBox(
                height: 3 * SizeConfig.heightMultiplier,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                child: Text(
                  "Please add your information",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 2 * SizeConfig.textMultiplier),
                ),
              ),
              SizedBox(
                height: 3 * SizeConfig.heightMultiplier,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: TextFormField(
                  decoration: new InputDecoration(
                      labelText: "email",
                      fillColor: Colors.white,
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(15.0),
                          borderSide: new BorderSide(color: Colors.blueGrey))),
                  validator: (val) {
                    if (val.length == 0) {
                      return "Email cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.text,
                  style: new TextStyle(color: Colors.blueGrey),
                ),
              ),
              SizedBox(
                height: 3 * SizeConfig.heightMultiplier,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: TextFormField(
                  decoration: new InputDecoration(
                      labelText: "password",
                      fillColor: Colors.white,
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(15.0),
                          borderSide: new BorderSide(color: Colors.blueGrey))),
                  validator: (val) {
                    if (val.length == 0) {
                      return "Password cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.visiblePassword,
                  style: new TextStyle(color: Colors.blueGrey),
                ),
              ),
              SizedBox(
                height: 5 * SizeConfig.heightMultiplier,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                child: Center(
                    child: RaisedButton(
                        child: Text("Next"),
                        color: Colors.blue,
                        onPressed: () {})),
              ),
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
