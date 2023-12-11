import 'package:flutter/material.dart';
import 'package:my_new_app/new_display_image.dart';
import 'package:my_new_app/new_page_image.dart';
import 'package:my_new_app/appdata_images.dart';
import 'drawer_navigation.dart';
import 'new_page_image.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DrawerNavigation(),
    );
  }
}

