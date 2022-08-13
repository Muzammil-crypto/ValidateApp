// ignore: must_be_immutable
import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  late String labelName;
  TextFieldComponent({
    Key? key,
    required this.labelName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.left,
      decoration: InputDecoration(
          isDense: true,
          labelText: labelName,
          labelStyle: const TextStyle(
              color: Color.fromARGB(255, 11, 55, 150), fontSize: 14),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10)),
          fillColor: Colors.black12,
          filled: true,
          // hintText: 'Username',
          hintStyle: const TextStyle(
              fontFamily: "BubblegumSans",
              fontSize: 14.0,
              color: Colors.black)),
    );
  }
}
