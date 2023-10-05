import 'dart:async';

import 'package:flutter/material.dart';
import 'package:taalom/Auth/Login.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(milliseconds: 500),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const Login())));

    return const Scaffold(
      backgroundColor: Colors.white,
      body: Text(
        "Home",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
