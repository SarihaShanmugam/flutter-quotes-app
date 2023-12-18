import 'package:flutter/material.dart';
import 'package:my_new_app/drawer_navigation.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerNavigation(),
      appBar: AppBar(
        title: Text('My profile',
            style: TextStyle(fontSize: 25, color: Colors.purple,fontWeight: FontWeight.bold)),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 35.0,
                backgroundImage: AssetImage('images/Mypic.jpeg'),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Text(
                    'Sariha Shanmugam',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.pink,
                    ),
                  )),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.pink,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
                width: 250,
                child: Divider(
                  color: Colors.pink,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.blue),
                  title: Text(
                    '+91 9994087656',style: TextStyle(fontSize: 25,color: Colors.pink),
                  ),
                ),
              ),

              Card(

                margin: EdgeInsets.only(left: 10.00),
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.blue),
                  title: Text('sarihakkn@gmail.com',style: TextStyle(fontSize: 25,color: Colors.pink),
                ),
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
