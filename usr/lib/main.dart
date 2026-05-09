import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/story_screen.dart';

void main() {
  runApp(const MidnightTalesApp());
}

class MidnightTalesApp extends StatelessWidget {
  const MidnightTalesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Midnight Tales',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0A0A0A),
        primaryColor: Colors.red[900],
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFFB71C1C),
          secondary: Color(0xFF7F0000),
          surface: Color(0xFF1A1A1A),
        ),
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
          displayLarge: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(color: Colors.white60, height: 1.6, fontSize: 18),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0A0A),
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontFamily: 'Georgia',
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFFB71C1C),
            letterSpacing: 2,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/story': (context) => const StoryScreen(),
      },
    );
  }
}