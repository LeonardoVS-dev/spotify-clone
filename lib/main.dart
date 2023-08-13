import 'package:flutter/material.dart';
import 'index.dart';



void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const index(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 26, 26, 27),
        textTheme: const TextTheme(
          displayLarge: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 22, fontWeight: FontWeight.w500, fontFamily: 'SpotifyBold', ),
          titleLarge: TextStyle(color: Colors.white, fontSize: 14,fontWeight: FontWeight.w600, letterSpacing: 0.25, fontFamily: 'SpotifyBook',),
          titleMedium: TextStyle(color: Colors.white, fontSize: 12,fontWeight: FontWeight.w500, letterSpacing: 0.20, fontFamily: 'SpotifyBook',), //fromARGB(255, 56, 55, 55),
          bodySmall: TextStyle(color: Colors.white54, fontSize: 12,fontWeight: FontWeight.w500, fontFamily: 'SpotifyLight') //fromARGB(255, 102, 101, 101)
        )
      ),
      routes: const {
        //'/ansdnm': (_) => home();
      },
      
    );
  }
}


