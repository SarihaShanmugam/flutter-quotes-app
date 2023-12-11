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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerNavigation(),
      appBar: AppBar(
        title: Text('Swami Vivekananda Quotes'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 250,
            child: PageView.builder(
              itemCount: newApp.length,
              itemBuilder: (context, index) {
                return NewDisplay(newApp: newApp[index]);
              },
            ),
          )
        ],
      ),
    );
  }
}
