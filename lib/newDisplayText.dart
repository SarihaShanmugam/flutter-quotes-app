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
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
            color: Colors.pink
        ),

        child: Center(

          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Text(
              newApp.text,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20,color: Colors.white,
                  letterSpacing: 1.5),
            ),
          ),
        ),
      ),
    );
  }
}
