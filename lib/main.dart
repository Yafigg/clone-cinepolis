import 'package:flutter/material.dart';
import 'package:clone_cinepolis/pages/splash-screen.dart';
import 'package:clone_cinepolis/pages/login-page.dart';
import 'package:clone_cinepolis/pages/home-page.dart';
import 'package:clone_cinepolis/pages/my-booking-page.dart';
import 'package:clone_cinepolis/pages/movie-page.dart';
import 'package:clone_cinepolis/pages/cinema-page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MySplashScreen(), // SplashScreen
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/my-booking': (context) => const MyBookingPage(),
        '/movie': (context) => const MoviePage(),
        '/cinema': (context) => const CinemaPage(),
      },
    );
  }
}
