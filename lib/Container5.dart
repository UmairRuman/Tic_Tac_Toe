import 'package:flutter/material.dart';
import 'package:tic_tac_toe/BoleanFlags.dart';
import 'package:tic_tac_toe/imageView.dart';

class Container5 extends StatefulWidget {
  Container5(
      {super.key,
      required this.container1CheckPoint,
      required this.onContainer5OneTap});
  int container1CheckPoint;
  VoidCallback onContainer5OneTap;
  @override
  State<Container5> createState() => _Container5State();
}

class _Container5State extends State<Container5> {
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
          onTap: widget.onContainer5OneTap,
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
