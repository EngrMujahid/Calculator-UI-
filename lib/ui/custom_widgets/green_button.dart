import 'package:calculatorapp/core/constants/colors.dart';
import 'package:flutter/material.dart';

class GreenButton extends StatelessWidget {
  final value;
  final VoidCallback  onPressed;
  GreenButton({this.value,required this.onPressed });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 170,
        width: 70,

        // container decoraion style

        decoration: BoxDecoration(
          color: Colors.lightGreenAccent,
          borderRadius: BorderRadius.circular(40),
        ),

        child: Center(
            child: Text(value,

          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.white  ,
          ),
        )),
      ),
    );
  }
}
