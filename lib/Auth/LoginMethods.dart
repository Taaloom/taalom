import 'dart:async';

import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
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
                    Column(
                      crossAxisAlignment:CrossAxisAlignment.center,
                      children: [

                      SizedBox(height: Adaptive.h(5),),
                      SizedBox(
                        width: Adaptive.w(80),
                        height: Adaptive.h(10),
                        child: IntlPhoneField(
                          pickerDialogStyle:
                          PickerDialogStyle(
                            backgroundColor: Colors.white
                          ),
                          disableAutoFillHints:true,
                          showCursor: false,
                          dropdownIconPosition: IconPosition.trailing,


                          decoration:  InputDecoration(
                           // labelText: 'Phone Number',
                            hintText:'Enter Your Phone Number' ,

                           focusedBorder:
                           OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(100),
                           ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          initialCountryCode: 'OM',
                          onChanged: (phone) {
                            if (kDebugMode) {
                              print(phone.completeNumber);
                            }
                          },
                        ),
                      ),
                      Column(

                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: Adaptive.w(80),
                            height: Adaptive.h(7),
                            child: TextField(
                              obscureText: true,

                              decoration: InputDecoration(
                                focusedBorder:
                                OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                prefixIcon: const Icon(Icons.key),
                                hintText: 'Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                            ),
                          ),
                          TextButton(onPressed: (){}, child: const Text("Forget password?" ,style: TextStyle(color: Colors.grey),))
                        ],
                      ),
                      SizedBox(
                        width: Adaptive.w(80),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                                value: true,
                                //checkColor: const Color(0xFF872A2A),
                                onChanged: (b) {

                            }),
                            SizedBox(width: Adaptive.w(1),),
                            const Text("Remember me" ,style: TextStyle(color: Colors.black),)
                          ],
                        ),
                      ),
                        SizedBox(height: Adaptive.h(3),),

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
                            child: const Text('Login' ,style: TextStyle(color: Colors.white) ,),
                          ),
                        ),

                        SizedBox(height: Adaptive.h(2),),
                        SizedBox(
                          width: Adaptive.w(80),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Or Log In With" ,style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                        ),
                        SizedBox(height: Adaptive.h(3),),
                        SizedBox(
                          width: Adaptive.w(80),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GoogleAuthButton(
                                onPressed: () {},
                                style: const AuthButtonStyle(
                                  borderRadius: 100,
                                  buttonType: AuthButtonType.icon,
                                  iconType: AuthIconType.outlined,
                                ),
                              ),
                              SizedBox(width: Adaptive.w(10),),
                              AppleAuthButton(
                                onPressed: () {},
                                style: const AuthButtonStyle(
                                  borderRadius: 100,
                                  buttonType: AuthButtonType.icon,
                                  iconType: AuthIconType.outlined,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: Adaptive.h(3),),
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
                                const Text("Already have an Account?" ,style: TextStyle(color: Colors.black) ,),
                                SizedBox(width: Adaptive.w(2),),
                                const Text("Sign Up" ,style: TextStyle(color: Color(0xFF872A2A)) ,),
                              ],
                            )
                        ),
                        SizedBox( height: Adaptive.h(3),)

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
