import 'package:flutter/material.dart';

import '../Components/ShapeWidget/ButtonShapeClipper.dart';

class SweepAnimmatedButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AnimatedButtonState();
}

enum Sweep { left, right, top, bottom }

class _AnimatedButtonState extends State<SweepAnimmatedButton>
    with TickerProviderStateMixin {
  double _btnWidth = 320;
  double _btnHeight = 40.0;
  late String ButtonName = '';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _animationController.forward();
      },
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Stack(
            children: <Widget>[
              Container(
                width: _btnWidth,
                height: _btnHeight,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8)),
                // color: Colors.green,
              ),
              Positioned(
                left: _animationController.value,
                child: ClipPath(
                  clipper: BackgroundClipper_2(),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue.shade900,
                        borderRadius: BorderRadius.circular(8)),
                    //  margin: EdgeInsets.only(left: 20),
                    width: _btnWidth,
                    height: _btnHeight,
                  ),
                ),
              ),
              Positioned(
                child: Container(
                  width: _btnWidth,
                  height: _btnHeight,
                  child: Center(
                    child: Text(
                      "Proceed ",
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }

  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 400),
        lowerBound: 0,
        upperBound: _btnWidth);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
