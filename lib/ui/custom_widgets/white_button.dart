import 'package:calculatorapp/core/constants/colors.dart';
import 'package:flutter/material.dart';

class WhiteButton extends StatelessWidget {
  final value;
  final VoidCallback  onPressed;
  WhiteButton({this.value,required this.onPressed });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Center(
            child: Text(
          value,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: darkGreyColor,
          ),
        )),
      ),
    );
  }
}
