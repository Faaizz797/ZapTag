import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:qrcode_scanner/ui/home_screen.dart';
import 'package:qrcode_scanner/ui/qr_generator_screen.dart';
import 'package:qrcode_scanner/ui/qr_scanner_screen.dart';
import 'package:qrcode_scanner/ui/splash_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context), 
      builder: DevicePreview.appBuilder, 
      theme: ThemeData(
        fontFamily: 'Manrope',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
        '/generate': (context) => const QrGeneratorScreen(),
        '/scan': (context) => const QrScannerScreen(),
      },
    );
  }
}

