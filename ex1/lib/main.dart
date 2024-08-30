import 'package:flutter/material.dart';
import 'package:flutter_basic1/HomeScreen.dart';

Future<void> main() async {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basic 1',
      home: HomeScreen(),

      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFFF8B7C7),
          toolbarHeight: 35,
        ),
        brightness: Brightness.light,
        useMaterial3: true,

        //Theme.of(context).colorScheme.primary
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFFf8b7c7),
          primary: Color(0xFFf8b7c7),
        ).copyWith(
            primary: Color(0xFFF8B7C7), //Candy
            secondary: Color(0xFFBAE2FC) //Shiori
        ),
        //Theme.of(context).textTheme.headline1,
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Colors.white,

          ),
          bodyLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.brown,

          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF794A4A),

          ),
          bodySmall: TextStyle(
            fontSize: 14,
            color: Color(0xFFCCA4A4),

          ),

        ),
      ),

    );
  }
}