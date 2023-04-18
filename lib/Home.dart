import 'dart:html';

import 'package:flutter/material.dart';
import 'package:loginpage/page1.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 50
              ),
              child: CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSd-rB1So-F12GjOvdduzIy6VVpL4J0JpJFmQmYtAAf5f13t67kND3jJPos0p-KJxa7NII&usqp=CAU'
              ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
                prefixIcon: Icon(
                    Icons.mail
                ),
                border: OutlineInputBorder(),
                label: Text(
                    'Username '
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(
                    Icons.password
                ),
                border: OutlineInputBorder(),
                label: Text(
                    'Password '
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>page1()
              ),
              );
            },
                child: Text(
                    'Login'
                ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(onPressed:(){
            },
                child: Text(
                    'Forget Password'
                ),
            ),
          ),
        ],
      ),
    );
  }
}
