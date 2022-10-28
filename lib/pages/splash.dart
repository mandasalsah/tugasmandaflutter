import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    startTimer();
    super.initState();
  }

  route(){
    Navigator.of(context).pushReplacementNamed('/LoginPage');
  }

  startTimer(){
    var duration = Duration(seconds: 2);
    return Timer(duration, route);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFF884B),
      child: Container(
        child: Image.asset("assets/logo.png"),
      ),

    );
  }
}