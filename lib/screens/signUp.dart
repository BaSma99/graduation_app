import 'package:flutter/material.dart';
import 'package:graduation_app/components/SizeConfig.dart';
import 'package:graduation_app/screens/signUp2.dart';
import 'package:graduation_app/screens/logIn.dart';

class SignUp extends StatefulWidget {
  static const routeName = "/signUp";

  SignUp({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
        centerTitle: true,
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
              //     height: 150.0,
              //     width: 150.0,
              //   ),
              // ),
              SizedBox(
                height: 5 * SizeConfig.heightMultiplier,
              ),
              Text(
                "Sign Up",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    fontSize: 4 * SizeConfig.textMultiplier),
              ),
              SizedBox(
                height: 3 * SizeConfig.heightMultiplier,
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 50.0, right: 50.0),
              //   child: Text(
              //     "Sign up by using email address and a password for the app",
              //     textAlign: TextAlign.center,
              //     style: TextStyle(
              //         color: Colors.blueGrey,
              //         fontSize: 2 * SizeConfig.textMultiplier),
              //   ),
              // ),
              // SizedBox(
              //   height: 3 * SizeConfig.heightMultiplier,
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: TextFormField(
                  decoration: new InputDecoration(
                      labelText: "firstName",
                      fillColor: Colors.white,
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(15.0),
                          borderSide: new BorderSide(color: Colors.blueGrey))),
                  validator: (val) {
                    if (val.length == 0) {
                      return "First Name cannot be empty";
                    } else {
                      return null;
                    }
                  },
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
                      labelText: "lastName",
                      fillColor: Colors.white,
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(15.0),
                          borderSide: new BorderSide(color: Colors.blueGrey))),
                  validator: (val) {
                    if (val.length == 0) {
                      return "Second Name cannot be empty";
                    } else {
                      return null;
                    }
                  },
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
                  keyboardType: TextInputType.emailAddress,
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
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: TextFormField(
                  decoration: new InputDecoration(
                      labelText: "confirmPassword",
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
                        child: Text("Step2"),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.pushNamed(context, SignUp2.routename);
                        })),
              ),
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Have an Account?",
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 1.7 * SizeConfig.textMultiplier),
                  ),
                  SizedBox(
                    width: 1 * SizeConfig.widthMultiplier,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                          color: Colors.blue[600],
                          fontSize: 1.7 * SizeConfig.textMultiplier),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
