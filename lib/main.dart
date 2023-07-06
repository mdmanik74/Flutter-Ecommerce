import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      textTheme: const TextTheme(
        displayLarge: TextStyle(fontFamily: 'Inter',fontSize: 22,fontWeight: FontWeight.w700),
        displayMedium: TextStyle(fontFamily: 'Inter',fontSize: 17,fontWeight: FontWeight.w700),
        displaySmall: TextStyle(fontFamily: 'Inter',fontSize: 15,fontWeight: FontWeight.w700),
        bodyLarge: TextStyle(fontFamily: 'Inter', fontSize: 17, fontWeight: FontWeight.w500),
        bodyMedium: TextStyle(fontFamily: 'Inter', fontSize: 12, fontWeight: FontWeight.w500),
        bodySmall: TextStyle(fontFamily: 'Inter', fontSize: 10, fontWeight: FontWeight.w500),
      ),
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

    );
  }
}