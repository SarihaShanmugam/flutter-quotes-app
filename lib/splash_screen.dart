import 'dart:async';

import 'package:flutter/material.dart';
import 'drawer_navigation.dart';
import 'newpageView.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => DrawerNavigation())));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),

                child: SizedBox.fromSize(
                  child: Image.asset('images/p.png'),
                ),
              ),
              Padding(padding: EdgeInsets.all(5.0),
              child:
              Text('Modern Quotes Library - Wiser Notes',textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.bold,color: Colors.purple),),)
            ],
          ),
        ),
      ),
    );
  }
}
