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
              accountName: Text('Swami Vivekanadas Quotes'),
              accountEmail: Text('version 1.0'),
          currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage('images/sv1.jpeg'),
          ),
          ),
          ListTile(
            title: Text ('Quotes text'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => NewPageVieww()));
            },

          ),
          ListTile(
            title: Text ('Quotes image'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => NewPageImage()));
            },

          )
        ],
      ),
    );
  }
}
