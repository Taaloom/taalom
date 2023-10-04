import 'dart:async';

import 'package:flutter/material.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginMethods extends StatefulWidget {
  const LoginMethods({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginMethodsState createState() => _LoginMethodsState();

}

class _LoginMethodsState extends State<LoginMethods> {
  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Stack(
          fit: StackFit.expand,
          children: [
            Container(
              width: Adaptive.w(100),
              color: const Color(0xFF872A2A),
              child:
              Stack(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 35 , right: 35 ,top: 35),
                           child: IconButton(
                             icon: const Icon(Icons.arrow_back_ios_new),
                             color: Colors.white,
                             onPressed: () {  },
                           ),
                         ),
                         Column(
                           mainAxisSize: MainAxisSize.max,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                          Stack(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 50 , right: 50),
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       SizedBox( height: Adaptive.h(10),),
                                       Text(
                                         "Log In" ,
                                         style: TextStyle(
                                             fontSize: Adaptive.sp(20),
                                             color: Colors.white),),
                                       Text(
                                         "Welcome Back" ,
                                         style: TextStyle(
                                             fontSize: Adaptive.sp(20),
                                             color: Colors.white),),
                                     ],
                                   ),
                                 ),
                                 const Row(
                                   children: [
                                     Spacer(),
                                     Image(image: AssetImage("assets/Loginroad.png")),
                                   ],
                                 ),
                               ],
                             )
                    ],),
                       ],
                     ),
            ),
            Positioned(
              top: Adaptive.h(30),
              width: Adaptive.w(100),
              height: Adaptive.h(70),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(32),
                    topLeft: Radius.circular(32),
                  ),
                ),
                child:  Column(
                  children: [
                    Column(children: [
                      SizedBox(height: Adaptive.h(9),),
                      Container(
                        width: Adaptive.w(80),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            hintText: 'Enter Your Phone Number',
                            errorText: '',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: Adaptive.w(80),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            hintText: 'Enter Your Phone Number',
                            errorText: '',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ),
                    ],)
                  ],
                ),
              ),
            ),
          ],
        ),
    );
  }
}
