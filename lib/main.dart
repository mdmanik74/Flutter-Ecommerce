import 'package:flutter/material.dart';
import 'view/start_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      textTheme: const TextTheme(
        displayLarge: TextStyle(color: Colors.black,fontFamily: 'Inter',fontSize: 22,fontWeight: FontWeight.w700,),
        displayMedium: TextStyle(fontFamily: 'Inter',fontSize: 17,fontWeight: FontWeight.w700),
        displaySmall: TextStyle(fontFamily: 'Inter',fontSize: 15,fontWeight: FontWeight.w700),
        bodyLarge: TextStyle(color:Colors.black,fontFamily: 'Inter', fontSize: 17, fontWeight: FontWeight.w500),
        bodyMedium: TextStyle(fontFamily: 'Inter', fontSize: 12, fontWeight: FontWeight.w500),
        bodySmall: TextStyle(fontFamily: 'Inter', fontSize: 10, fontWeight: FontWeight.w500),
      ),
        primarySwatch: Colors.blue,
      ),
      home: const StartScreen(),
    );
  }
}

