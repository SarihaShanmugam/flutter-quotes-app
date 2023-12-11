import 'package:flutter/material.dart';
import 'package:my_new_app/appdata_images.dart';
import 'package:my_new_app/new_display_image.dart';

import 'drawer_navigation.dart';

class NewPageImage extends StatefulWidget {
  const NewPageImage({super.key});

  @override
  State<NewPageImage> createState() => _NewPageImageState();
}

class _NewPageImageState extends State<NewPageImage> {
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
            height: 200,
            child: PageView.builder(
              itemCount: appDataImage.length,
                itemBuilder: (context,index) {
                return DisplayImage(appDataImage: appDataImage[index]);
                }
            ),
          )
        ],
      ),
    );
  }
}
