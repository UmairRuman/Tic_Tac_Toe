import 'package:flutter/material.dart';
import 'package:tic_tac_toe/BoleanFlags.dart';
import 'package:tic_tac_toe/imageView.dart';

class Container2 extends StatefulWidget {
  Container2(
      {super.key,
      required this.container1CheckPoint,
      required this.onContainer2OneTap});
  int container1CheckPoint;
  VoidCallback onContainer2OneTap;

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 33,
      child: Padding(
        padding: const EdgeInsets.only(
            //Container N0 1
            right: 8,
            top: 8,
            bottom: 8),
        child: GestureDetector(
          onTap: widget.onContainer2OneTap,
          child: Builder(builder: (context) {
            if (widget.container1CheckPoint == 1) {
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
