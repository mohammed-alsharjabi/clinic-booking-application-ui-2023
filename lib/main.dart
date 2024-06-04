import 'package:flutter/material.dart';
import 'package:webteb2/screens/auth_screens/login_screen.dart';
import 'package:webteb2/screens/welcomscreen.dart';
import 'package:webteb2/screens/widgets/txt_widegt.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const  WelcomeScreen()
    );
  }
}
