
import 'package:flutter/material.dart';
import 'drawer_navigation.dart';
import 'package:my_new_app/appdata_images.dart';
import 'package:my_new_app/new_display_image.dart';
import 'package:my_new_app/indicator_image.dart';

class NewPageImage extends StatefulWidget {
  const NewPageImage({super.key});
  @override
  State<NewPageImage> createState() => _NewPageImageState();
}

class _NewPageImageState extends State<NewPageImage> {
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerNavigation(),
      appBar: AppBar(
        title: Text('Modern Quotes Library', style:
        TextStyle(fontWeight:
        FontWeight.bold, color: Colors.purple),
        ),

      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 400,
            child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                    print(index);
                  });
                },
                itemCount: appDataImage.length,
                itemBuilder: (context, index) {
                  return DisplayImage(appDataImage: appDataImage[index]);
                }
            ),
          ),
          Padding(padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(appDataImage.length,
                        (index) =>
                        IndigatorImage(
                            isActive: _selectedIndex == index ? true : false)),
              ],
            ),
          ),
        ],
      ),
    );
  }}