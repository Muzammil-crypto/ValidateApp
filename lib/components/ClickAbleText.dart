import 'package:flutter/material.dart';

class ClickableOptions extends StatelessWidget {
  late String buttonTitle;
  late Widget pageAddress;
  ClickableOptions({
    Key? key,
    required this.buttonTitle,
    required this.pageAddress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(
        buttonTitle,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 12,
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => pageAddress),
        ),
      },
    );
  }
}
