import 'dart:async';

import 'package:app1/Screens/home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 1500), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.deepPurpleAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                height: 230,
                width: 230,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/logo.jpg'),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.circle)),
            const Text(
              'Eid Ul-Adha\nQuotes',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w700,
                  color: Colors.cyanAccent),
            )
          ],
        ),
      ),
    ));
  }
}
