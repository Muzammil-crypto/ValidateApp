import 'package:flutter/material.dart';

class BottomLine extends StatelessWidget {
  const BottomLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 50,
      bottom: 20,
      child: InkWell(
        child: Container(
            width: MediaQuery.of(context).size.width / 1.2,
            child: Row(
              children: [
                Text(
                  "suivre uneexpedition sans se connecter",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.arrow_forward,
                  size: 25,
                )
              ],
            )),
        onTap: () => {},
      ),
    );
  }
}
