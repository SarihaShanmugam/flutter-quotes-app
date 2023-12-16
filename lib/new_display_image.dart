import 'package:flutter/material.dart';
import 'package:my_new_app/appdata_images.dart';
import 'package:my_new_app/MyProfile.dart';
import 'package:my_new_app/CompanyProfile.dart';

class DisplayImage extends StatelessWidget {
  final AppDataImage appDataImage;
  const DisplayImage({super.key,required this.appDataImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      margin: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),image:
        DecorationImage(image: AssetImage(appDataImage.image),
    fit: BoxFit.cover,
    ),),
    );
  }
}
