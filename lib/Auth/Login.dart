import 'dart:async';

import 'package:flutter/material.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:taalom/Auth/LoginMethods.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/splashLast.png"), fit: BoxFit.cover)),
      child:  Column(children: [
        const Spacer(),
        SizedBox(
          width: Adaptive.w(80),
          child: ElevatedButton(
            onPressed:() {},
            style:  ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  const Color(0xFF872A2A)
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  // Change your radius here
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            child: const Text('Get Started' ,style: TextStyle(color: Colors.white) ,),
          ),
        ),
        TextButton(
            onPressed:() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginMethods()),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const Text("Already have an account?" ,style: TextStyle(color: Colors.white) ,),
              SizedBox(width: Adaptive.w(2),),
              const Text("Log In?" ,style: TextStyle(color: Color(0xFF872A2A)) ,),
              ],
            )
        ),
        SizedBox( height: Adaptive.h(17),)

      ]),
    ));
  }
}
