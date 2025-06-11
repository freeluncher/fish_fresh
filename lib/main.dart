import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

final ThemeData freshSeaTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF0093D1), // biru laut
    primary: const Color(0xFF0093D1), // biru laut
    secondary: const Color(0xFF00C2A0), // hijau toska segar
    background: const Color(0xFFE3F6FF), // biru muda sangat terang
    surface: Colors.white,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onBackground: const Color(0xFF00334E), // biru gelap
    onSurface: const Color(0xFF00334E),
    brightness: Brightness.light,
  ),
  scaffoldBackgroundColor: const Color(0xFFE3F6FF),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF0093D1),
    foregroundColor: Colors.white,
    elevation: 2,
    centerTitle: true,
    titleTextStyle: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 22,
      color: Colors.white,
      letterSpacing: 1.2,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF00C2A0),
      foregroundColor: Colors.white,
      textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
    ),
  ),
  iconTheme: const IconThemeData(color: Color(0xFF0093D1)),
  textTheme: const TextTheme(
    headlineSmall: TextStyle(
      color: Color(0xFF00334E),
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: TextStyle(color: Color(0xFF00334E)),
    bodyLarge: TextStyle(color: Color(0xFF00334E), fontWeight: FontWeight.bold),
    titleMedium: TextStyle(
      color: Color(0xFF0093D1),
      fontWeight: FontWeight.bold,
    ),
  ),
  useMaterial3: true,
);

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
      theme: freshSeaTheme,
      home: const SplashScreen(),
    );
  }
}
