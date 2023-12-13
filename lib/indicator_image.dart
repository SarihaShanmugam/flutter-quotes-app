import 'package:flutter/material.dart';

class IndigatorImage extends StatelessWidget {
  final bool isActive;

  const IndigatorImage({super.key,required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(duration:
    Duration(milliseconds: 250),
    margin: const EdgeInsets.symmetric(horizontal: 5),
    width: isActive ? 20:10,height: 10,
      decoration: BoxDecoration(
        color: isActive ? Colors.pink:Colors.blueAccent,
        borderRadius: BorderRadius.circular(10)
    ),);
  }
}
