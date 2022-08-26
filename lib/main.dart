import 'package:flutter/material.dart';
import 'package:whatsapp_clone/whatsapp/pages/splash/splash_screen.dart';
import 'package:whatsapp_clone/whatsapp/whatsapp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const SplashScreen(),
    );
  }
}
