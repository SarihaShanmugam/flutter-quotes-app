import 'package:flutter/material.dart';
import 'package:my_new_app/drawer_navigation.dart';

class CompanyProfile extends StatelessWidget {
  const CompanyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerNavigation(),
      appBar: AppBar(
        title: Text('Company profile',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.purple),),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRect(
                    child: SizedBox.fromSize(
                      size: Size.square(40),
                      child: Image.asset('images/TideLife.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    child: Text(
                      'Tidy Life India Pvt Ltd',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink),
                    ),
                  ),

                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: SizedBox(
                  height: 20,
                  width: 200,
                  child: Divider(
                    color: Colors.pink,
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.blue,
                  ),
                  title: Text(
                    '+91 86103 38291',
                    style:
                        TextStyle(fontSize: 20, color: Colors.pink),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.blue,
                  ),
                  title: Text(
                    'tidylifeindia@gmail.com',
                    style:
                        TextStyle(fontSize: 20, color: Colors.pink),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.blue,
                  ),
                  title: Text(
                    'No A3 Mahalakshmi Flats \n Sivagami Street \n New Perungalathur,\n Chennai, Tamil Nadu 600063 ',
                    style:
                        TextStyle(fontSize: 20, color: Colors.pink),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
