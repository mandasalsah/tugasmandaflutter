import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
          height: 250,
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
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Image.asset('assets/logo.png'),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        inputStyle("Full Name", "Enter Your Full Name"),
        SizedBox(
          height: 20,
          ),
        inputStyle("Password", "Enter Your Password"),
        SizedBox(
          height: 20,
          ),
        inputStyle("Email", "Enter Your Email"),
        SizedBox(
          height: 20,
          ),
        inputStyle("No Handpone", "Enter Your Handpone"),
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
              Navigator.of(context).pop();
            }, 
            child: Text("Register", style: TextStyle(
              fontSize: 20, color: Colors.white
            ),
            ),
            ),
          ),
      ],
    );
  }
}

Widget inputStyle(String title, String hinTxt){
  return   Padding(
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
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 3,
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
        );
}