import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: content (),
    );
  }

  Widget content(){
    return Column(
      children: [
        Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFFF884B),
            borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(40),
            bottomLeft: Radius.circular(40),
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
            ),
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(top: 10.0),
            child: Image.asset('assets/logo.png'),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        inputStyle("Email", "Enter Your Email"),
        SizedBox(
          height: 30,
          ),
        inputStyle("Password", "Enter Your Password"),
        SizedBox(
          height: 60,
          ),
          Container(
            height: 60,
            width: 300,
            decoration: BoxDecoration(color: Colors.orange,
            borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton (onPressed: (){
              Navigator.of(context).pushNamed("/MainPage");
            }, 
            child: Text("Login", style: TextStyle(
              fontSize: 20, color: Colors.white,
            ),
            ),
            ),
          ),
          SizedBox(height: 10),
          RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Dont have an Account?", 
               style: TextStyle(fontSize: 15, color: Colors.black),
          ), 
          TextSpan(
            text: "Register", 
          style: TextStyle(fontSize: 15, color: Colors.deepOrange),
          recognizer: TapGestureRecognizer()
          ..onTap =(){
            Navigator.of(context).pushNamed("/Register");
          }), 
            ],
           ),
          ),
      ],
    );
  }
}

Widget inputStyle(String title, String hinTxt){
  return   Column(
    children: [
      Padding(
              padding: const EdgeInsets.fromLTRB(50, 5, 50, 10),
              child: Row(
                children: [
                  Text("$title: ", 
                  style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFF884B),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0,3)
                          )
                        ]
                      ),
                      child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 10),
                        hintText: hinTxt
                        ),
                      ),
                      ),
                    ),
                ],
              ),
            ),
    ],
  );
}