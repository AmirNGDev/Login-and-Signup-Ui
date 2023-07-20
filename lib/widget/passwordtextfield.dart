import 'package:flutter/material.dart';

class TextFieldCP extends StatefulWidget {
  String hintText;
  IconData texticon;
  TextFieldCP(this.hintText, this.texticon, {super.key});

  @override
  State<TextFieldCP> createState() => _TextFieldCPState();
}

bool isPass = true;
IconData texticoni = Icons.visibility_off;

class _TextFieldCPState extends State<TextFieldCP> {
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
              obscureText: isPass,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  widget.texticon,
                  color: Colors.black54,
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    if (isPass == false) {
                      setState(() {
                        texticoni = Icons.visibility_off;
                        isPass = true;
                      });
                    } else {
                      setState(() {
                        texticoni = Icons.visibility;
                        isPass = false;
                      });
                    }
                  },
                  child: Icon(
                    texticoni,
                    color: isPass ? Colors.black54 : Colors.black87,
                  ),
                ),
                border: InputBorder.none,
                hintText: widget.hintText,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
