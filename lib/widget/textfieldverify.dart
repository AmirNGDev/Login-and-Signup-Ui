import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormFields extends StatefulWidget {
  @override
  _FormFieldsState createState() => _FormFieldsState();
}

class _FormFieldsState extends State<FormFields> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();

  final FocusNode _focusNode1 = FocusNode();
  final FocusNode _focusNode2 = FocusNode();
  final FocusNode _focusNode3 = FocusNode();
  final FocusNode _focusNode4 = FocusNode();

  @override
  void initState() {
    super.initState();

    _controller1.addListener(() {
      if (_controller1.text.length == 1) {
        FocusScope.of(context).requestFocus(_focusNode2);
      }
    });

    _controller2.addListener(() {
      if (_controller2.text.length == 1) {
        FocusScope.of(context).requestFocus(_focusNode3);
      }
    });

    _controller3.addListener(() {
      if (_controller3.text.length == 1) {
        FocusScope.of(context).requestFocus(_focusNode4);
      }
    });
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();

    _focusNode1.dispose();
    _focusNode2.dispose();
    _focusNode3.dispose();
    _focusNode4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          width: 60,
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
            child: TextField(
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
              ],
              keyboardType: TextInputType.number,
              controller: _controller1,
              focusNode: _focusNode1,
              autofocus: true,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 22,
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(8),
          width: 60,
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
            child: TextField(
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
              ],
              keyboardType: TextInputType.number,
              controller: _controller2,
              focusNode: _focusNode2,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 22,
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(8),
          width: 60,
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
            child: TextField(
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
              ],
              keyboardType: TextInputType.number,
              controller: _controller3,
              focusNode: _focusNode3,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 22,
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(8),
          width: 60,
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
            child: TextField(
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
              ],
              keyboardType: TextInputType.number,
              controller: _controller4,
              focusNode: _focusNode4,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 22,
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
