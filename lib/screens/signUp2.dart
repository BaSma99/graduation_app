import 'package:flutter/material.dart';
import 'package:graduation_app/components/SizeConfig.dart';

class SignUp2 extends StatefulWidget {
  static const routename = '/Signup';

  SignUp2({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp2> {
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
              ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Image.asset(
                  "assets/images/creatingprofile.png",
                  fit: BoxFit.cover,
                  height: 150.0,
                  width: 150.0,
                ),
              ),
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
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: TextFormField(
                  decoration: new InputDecoration(
                      labelText: "Birt Date",
                      fillColor: Colors.white,
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(15.0),
                          borderSide: new BorderSide(color: Colors.blueGrey))),
                  validator: (val) {
                    if (val.length == 0) {
                      return "BirthDate cannot be empty";
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
                      labelText: "Field",
                      fillColor: Colors.white,
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(15.0),
                          borderSide: new BorderSide(color: Colors.blueGrey))),
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
                      labelText: "City",
                      fillColor: Colors.white,
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(15.0),
                          borderSide: new BorderSide(color: Colors.blueGrey))),
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
                        child: Text("Create account"),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.pushNamed(context, 'profile');
                        })),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
