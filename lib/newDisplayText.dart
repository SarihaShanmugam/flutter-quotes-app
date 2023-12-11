import 'package:flutter/material.dart';
import 'newAppData.dart';

class NewDisplay extends StatelessWidget {
  final NewAppData newApp;
  const NewDisplay({super.key, required this.newApp});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 250,
        color: Colors.grey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Text(
              newApp.text,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, letterSpacing: 1.5),
            ),
          ),
        ),
      ),
    );
  }
}
