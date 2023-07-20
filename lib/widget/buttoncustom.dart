import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  String text;
  String src;
  ButtonCustom(this.text, this.src, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.black, width: 1),
      ),
      margin: const EdgeInsets.only(
        left: 13,
        right: 13,
        bottom: 18,
      ),
      padding: const EdgeInsets.only(
        top: 12,
        bottom: 12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            src,
            height: 28.0,
            width: 28.0,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),
          )
        ],
      ),
    );
  }
}
