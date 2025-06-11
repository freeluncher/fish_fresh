import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const FishFreshApp());
}

class FishFreshApp extends StatelessWidget {
  const FishFreshApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FISHFRESH',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SplashScreen(),
    );
  }
}
