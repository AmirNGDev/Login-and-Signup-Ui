import 'package:flutter/material.dart';

class TextFieldC extends StatelessWidget {
  String hintText;
  IconData texticon;
  TextFieldC(this.hintText, this.texticon, {super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 13,
      ),
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade200,
          border: Border.all(
            color: Colors.white,
            width: 3,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  texticon,
                  color: Colors.black54,
                ),
                border: InputBorder.none,
                hintText: hintText,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
