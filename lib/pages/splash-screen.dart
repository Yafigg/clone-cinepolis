import 'dart:async';
import 'package:flutter/material.dart';
import 'package:clone_cinepolis/pages/login-page.dart'; // Pastikan path file sudah benar

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 1),  // Durasi splash screen 3 detik
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => LoginPage(),  
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(246, 3, 38, 112),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',  // Pastikan logo ada di folder assets
              width: 300,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
