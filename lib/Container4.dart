import 'package:flutter/material.dart';
import 'package:tic_tac_toe/BoleanFlags.dart';
import 'package:tic_tac_toe/imageView.dart';

class Container4 extends StatefulWidget {
  Container4(
      {super.key,
      required this.container1CheckPoint,
      required this.onContainer4OneTap});
  int container1CheckPoint;
  VoidCallback onContainer4OneTap;
  @override
  State<Container4> createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 33,
      child: Padding(
        padding: const EdgeInsets.only(
            //Container N0 1
            right: 8,
            bottom: 8),
        child: GestureDetector(
          onTap: widget.onContainer4OneTap,
          child: Builder(builder: (context) {
            if (widget.container1CheckPoint == 1) {
              widget.container1CheckPoint = 1;
              return Container(
                color: Colors.white,
                child: Image.asset(Images.ivCircle),
              );
            } else if (widget.container1CheckPoint == 2) {
              return Container(
                color: Colors.white,
                child: Image.asset(Images.ivCross),
              );
            } else if (widget.container1CheckPoint == 0) {
              return Container(
                color: Colors.white,
              );
            }
            return Container(
              color: Colors.white,
            );
          }),
        ),
      ),
    );
  }
}
