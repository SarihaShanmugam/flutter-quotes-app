import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_new_app/newAppData.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
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
        title: Text(
          'Modern Quotes Library',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.purple),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text(
                  'Share',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
            onSelected: (value) {
              if (value == 1) {
                _share();
              }
            },
          )
        ],
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
                }),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    appDataImage.length,
                    (index) => IndigatorImage(
                        isActive: _selectedIndex == index ? true : false)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _share() async {
    print('---------> _shareInfo');
    print(appDataImage[_selectedIndex].image);

    /* final ByteData bytes=  await rootBundle.load(appDataImage[_selectedIndex].image]);
  await Share.file('fav image',fav.jpeg,bytes.buffer.asUint8List(),'image/jpeg');}*/

    //print('----Image');
    //print(appDataImage[_selectedIndex].image)

    ByteData imagebyte =
        await rootBundle.load(appDataImage[_selectedIndex].image);
    final temp = await getTemporaryDirectory();
    final path = '${temp.path}/p.png';
    print(path);
    File(path).writeAsBytes(imagebyte.buffer.asUint8List());

    await Share.shareFiles([path], text: 'Image Shared');
  }
}
