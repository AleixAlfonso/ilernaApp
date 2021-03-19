import 'package:flutter/material.dart';

class LoginPAge extends StatefulWidget {
  @override
  _LoginPAgeState createState() => _LoginPAgeState();
}

class _LoginPAgeState extends State<LoginPAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
