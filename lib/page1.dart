import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 70),
            child: Center(
              child: CircleAvatar(radius: 100 ,backgroundImage: AssetImage(
                  'image/peter.jpg'),
              ),
            ),
          ),
          Text('Ninte Pani Yelkkunnundedaah',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}

