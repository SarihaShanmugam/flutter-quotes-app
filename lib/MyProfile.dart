import 'package:flutter/material.dart';
import 'package:my_new_app/drawer_navigation.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerNavigation(),
    appBar: AppBar(
    title: Text('My profile',style: TextStyle(fontSize: 20,
      color: Colors.red,backgroundColor: Colors.green)),
    ),
body: SafeArea(
child: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
  CircleAvatar(

radius: 20.0,backgroundImage: AssetImage('images/s.jpeg'),

),
Padding(
padding: const EdgeInsets.symmetric(vertical: 30.0),

  child: Text('Sariha Shanmugam',style: TextStyle(fontSize: 20.0,
    color: Colors.green,),
  )
),
Padding(padding: EdgeInsets.symmetric(horizontal: 5.0),

child: Text('Flutter Developer',style: TextStyle(fontSize: 30.0,
  color: Colors.green,),

),

),
  SizedBox(
    height: 30,
    width: 250,
      child: Divider(
        color: Colors.green,
      ),
  ),
  Card(
    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
    child: ListTile(
      leading: Icon(
        Icons.phone,color: Colors.blue),
      title: Text('+91 9152436789'),
      ),
    ),
Card(
  margin: EdgeInsets.all(10.00),
  child: ListTile(
    leading: Icon(
      Icons.email,color: Colors.blue),
    title: Text('sarihakkn@gmail.com'),
    ),
  ),

],
),
),
),



    );
  }
}
