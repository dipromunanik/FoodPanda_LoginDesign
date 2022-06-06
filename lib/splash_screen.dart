import 'dart:async';

import 'package:authentication_flutter/auth/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  startTimer(){
    
    Timer(const Duration(seconds: 4), () async{
      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));

    });
  }

  @override
  void initState() {
    super.initState();

    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF38c172),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 100, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('images/splash_logo.png',width: double.infinity,fit: BoxFit.cover),
            const SizedBox(height: 5),
            const Text('Food Order',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,fontFamily: 'Oswald')),
          ],
        ),
      )
    );
  }
}
