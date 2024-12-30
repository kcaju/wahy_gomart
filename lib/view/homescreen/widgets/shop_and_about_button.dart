import 'package:flutter/material.dart';

class ShopAndAboutButton extends StatelessWidget {
  const ShopAndAboutButton(
      {super.key,
      required this.text,
      required this.buttonColor,
      this.isWidth = false});
  final String text;
  final Color buttonColor;
  final bool isWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: isWidth ? 140 : 180,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: isWidth ? 14 : 18,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.arrow_forward,
            color: Colors.white,
          )
        ],
      ),
      decoration: BoxDecoration(
          color: buttonColor, borderRadius: BorderRadius.circular(5)),
    );
  }
}
