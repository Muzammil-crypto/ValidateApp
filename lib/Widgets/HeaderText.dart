import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Fresh",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
        Text(
          "Track",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 22,
              color: Colors.blue.shade800,
              fontStyle: FontStyle.italic),
        ),
      ],
    );
  }
}
