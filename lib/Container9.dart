import 'package:flutter/material.dart';
import 'package:tic_tac_toe/BoleanFlags.dart';
import 'package:tic_tac_toe/imageView.dart';

class Container9 extends StatefulWidget {
  Container9(
      {super.key,
      required this.container1CheckPoint,
      required this.onContainer9OneTap});
  int container1CheckPoint;
  VoidCallback onContainer9OneTap;

  @override
  State<Container9> createState() => _Container9State();
}

class _Container9State extends State<Container9> {
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
          onTap: widget.onContainer9OneTap,
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
