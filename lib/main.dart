import 'package:flutter/material.dart';
import 'package:sorealtravel_flutter/login_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Root widget
      home: Scaffold(
        appBar: AppBar(title: const Text('My Home Page')),
        body: Center(
          child: Builder(
            builder: (context) {
              //the following is used to organise the main widgets in a column from top to bottom
              return Column(
                children: [
                  const Text('Hello, World!'),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      print('Click!');
                    },
                    child: const Text('Please click me!'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to the second page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: const Text('Go to Login Page'),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
