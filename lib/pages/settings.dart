import 'package:flutter/material.dart';
class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(

        onPressed: () {},
        backgroundColor: Color(0xff5d00d7),
        child: Icon(
          Icons.add,
          size: 32.0,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image:DecorationImage(
            image: AssetImage('assets/images/image.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Settings Page',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

            ),
            Center(
              child: Text(
                'Page 3',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

            ),
          ],
        ),
      ),
    );
  }
}