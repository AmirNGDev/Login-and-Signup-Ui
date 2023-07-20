import 'dart:async';
import 'package:app/Screen/homepage.dart';
import 'package:flutter/material.dart';

class ToHome extends StatelessWidget {
  const ToHome({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 4), () => go(context));

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(
              'https://s8.uupload.ir/files/image_pim0.jpg',
              width: 350,
              height: 350,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'You have successfully logged in\nMoving to the home page...',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CircularProgressIndicator(
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }

  void go(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
  }
}
