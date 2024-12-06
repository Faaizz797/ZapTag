import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF53006B), // Warna atas
              Color(0xFFAA04D8), // Warna bawah
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo atau animasi
              Image.asset(
                'assets/images/logo_splash.png', // Pastikan gambar ada di folder assets
                width: 180, // Ukuran gambar
                height: 180,
              ),
              // const SizedBox(height: 10),
              // // Teks Splash
              // const Text(
              //   'ZapTag',
              //   style: TextStyle(
              //     color: Colors.white,
              //     fontSize: 35,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}