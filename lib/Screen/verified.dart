import 'package:app/Screen/login.dart';
import 'package:flutter/material.dart';

class VerifiedPage extends StatelessWidget {
  const VerifiedPage({super.key});

  @override
  Widget build(BuildContext context) {
    Color pColor = const Color.fromRGBO(13, 126, 255, 1);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          iconSize: 30,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.network(
                'https://s8.uupload.ir/files/16693291_5792795_gs2n.jpg',
                width: 260,
                height: 260,
              ),
              const Text(
                'Verified',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Your account has been verified\nsuccessfully',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              const Expanded(
                child: Text(''),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: pColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  margin: const EdgeInsets.only(
                    left: 13,
                    right: 13,
                    bottom: 13,
                  ),
                  height: 60,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Back to login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
