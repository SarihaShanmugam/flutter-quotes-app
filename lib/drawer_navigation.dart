import 'package:flutter/material.dart';
import 'new_page_image.dart';
import 'newpageView.dart';
import 'package:my_new_app/MyProfile.dart';
import 'package:my_new_app/CompanyProfile.dart';

class DrawerNavigation extends StatefulWidget {
  const DrawerNavigation({super.key});

  @override
  State<DrawerNavigation> createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Modern Quotes Library',style: TextStyle(fontSize: 20.0,color: Colors.white),),
            accountEmail: Text('Version 1.0'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('images/p.png'),
            ),
          ),
          ListTile(
            title: Text('Quotes'),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => NewPageVieww()));
            },
          ),
          ListTile(
            title: Text('Themes'),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => NewPageImage()));
            },
          ),
          ListTile(
            title: Text('My Profile'),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MyProfile() ));
            },
          ),
          ListTile(
            title: Text('Company Profile'),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CompanyProfile()));
            },
          ),
        ],
      ),
    );
  }
}
