import 'package:flutter/material.dart';
import 'package:my_new_app/newAppData.dart';
import 'package:my_new_app/newDisplayText.dart';

import 'drawer_navigation.dart';

class NewPageVieww extends StatefulWidget {
  const NewPageVieww({super.key});

  @override
  State<NewPageVieww> createState() => _NewPageViewwState();
}

class _NewPageViewwState extends State<NewPageVieww> {
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerNavigation(),
      appBar: AppBar(
        title: Text('Modern Quotes Library',style:
        TextStyle(color: Colors.purple,
            fontWeight: FontWeight.bold),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 250,
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                    _selectedIndex = index;
                print(index);
              });},
                controller:PageController(viewportFraction: 0.5),
              itemCount: newApp.length,
              itemBuilder: (context, index) {
                var text=newApp[index];
                var scale=_selectedIndex == index ? 1.0:0.8;
                return TweenAnimationBuilder(
                    tween: Tween(begin: scale,end: scale),
                    duration: Duration(milliseconds: 350),
                    child: NewDisplay(newApp: text),
                    builder: (context, value, child) {
                  return Transform.scale(
                    scale: value,
                    child: child,
                  );

                    }
                ); }),),
               Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Padding(
    padding: const EdgeInsets.all(25.0),
    child: Container(
    child: Text(
    (_selectedIndex+1).toString() + '/' +
    newApp.length.toString(),
    style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,color: Colors.purple

    ),
    ),
    ),
    )
    ],
               )
        ],
      ),
    );
  }
}
