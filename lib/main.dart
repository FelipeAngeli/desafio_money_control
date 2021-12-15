import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

void main(List<String> args) {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/logo.jpg',
              height: 200,
              width: 200,
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 16.0,
                left: 40,
                bottom: 16,
                right: 40,
              ),
              child: Text(
                'Get you Money Under Control',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 5.0,
                left: 60,
                bottom: 50,
                right: 60,
              ),
              child: Text(
                'Manage your expenses. Seamlessly.',
                style: TextStyle(
                  color: Colors.white38,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, right: 15, bottom: 0, left: 15),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff5E5CE4),
                ),
                onPressed: () {},
                child: Text('Sign Up eith Email ID'),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 0, right: 15, bottom: 0, left: 15),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xffffffff),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icon_google.png',
                      height: 18,
                      width: 18,
                    ),
                    const Text(
                      '  Sign Up with Google',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text: 'Already have an account? ',
                style: TextStyle(color: Colors.white),
                children: [
                  TextSpan(
                    text: 'Sign In',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
