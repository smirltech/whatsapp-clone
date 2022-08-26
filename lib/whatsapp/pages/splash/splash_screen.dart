import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_clone/whatsapp/whatsapp.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late Ticker ticker;

  @override
  void initState() {
    super.initState();

    log("we are here");
    ticker = createTicker((elapsed) {
      if (elapsed.inSeconds > 1) {
        ticker.stop();

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Whatsapp()),
        );
      }
    });

    ticker.start();
  }

  @override
  void dispose() {
    ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Spacer(),
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/logos/whatsapp.png"),
              //foregroundColor: Colors.white,
              radius: 40,
            ),
            Spacer(),
            Text(
              "from",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "SmirlTech",
              style: TextStyle(fontSize: 32, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
