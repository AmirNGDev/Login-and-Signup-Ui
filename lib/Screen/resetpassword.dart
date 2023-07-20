import 'dart:async';
import 'package:app/Screen/verified.dart';
import 'package:app/widget/passwordtextfield.dart';
import 'package:flutter/material.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

bool isClick = false;

class _ResetPasswordPageState extends State<ResetPasswordPage> {
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Image.network(
                  'https://s8.uupload.ir/files/20602817_6321602_ixum.jpg',
                  width: 260,
                  height: 260,
                ),
                const Text(
                  'Reset Password',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'New password',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                TextFieldCP('Enter your new password', Icons.lock),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Confirm new password',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                TextFieldCP('Re-enter your new password', Icons.lock_outline),
                const SizedBox(
                  height: 150,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isClick = true;
                    });
                    Timer(
                      const Duration(seconds: 3),
                      () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const VerifiedPage(),
                          ),
                        );
                      },
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        isClick
                            // ignore: dead_code
                            ? const CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 2,
                              )
                            : const Text(
                                'Save',
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
      ),
    );
  }
}
