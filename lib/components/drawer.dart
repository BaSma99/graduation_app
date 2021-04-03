import 'package:flutter/material.dart';
import 'package:graduation_app/screens/profile.dart';
import 'package:graduation_app/screens/saved.dart';
import 'package:graduation_app/components/courses.dart';

class DrawerComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Basma Reda'),
            accountEmail: Text('rbasma319@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: new BoxDecoration(
              color: Colors.blue,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
            child: ListTile(
              title: Text('Edit Profile'),
              leading: Icon(Icons.edit, color: Colors.blue),
            ),
          ),
          Divider(thickness: 1, color: Colors.grey),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Saved()));
            },
            child: ListTile(
              title: Text('Saved'),
              leading: Icon(Icons.person_search, color: Colors.blue),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Courses()));
            },
            child: ListTile(
              title: Text('Courses'),
              leading: Icon(
                Icons.receipt_long_outlined,
                color: Colors.blue,
              ),
            ),
          ),
          Divider(thickness: 1, color: Colors.grey),
          // InkWell(
          //   onTap: () {},
          //   child: ListTile(
          //     title: Text('Help Center'),
          //     leading: Icon(
          //       Icons.call,
          //       color: Colors.blue,
          //     ),
          //   ),
          // ),
          // InkWell(
          //   onTap: () {},
          //   child: ListTile(
          //     title: Text('About Us'),
          //     leading: Icon(
          //       Icons.help,
          //       color: Colors.blue,
          //     ),
          //   ),
          // ),
          // InkWell(
          //   onTap: () {},
          //   child: ListTile(
          //     title: Text('Contact Us'),
          //     leading: Icon(Icons.message, color: Colors.blue),
          //   ),
          // ),
          // Divider(thickness: 1, color: Colors.grey),
          // InkWell(
          //   onTap: () {},
          //   child: ListTile(
          //     title: Text('Account Settings'),
          //     leading: Icon(
          //       Icons.settings,
          //       color: Colors.blue,
          //     ),
          //   ),
          // ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('LogOut'),
              leading: Icon(Icons.logout, color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
