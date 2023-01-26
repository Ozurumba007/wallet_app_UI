import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String IconImagePath;
  final String buttonText;

  const MyButton({
    super.key,
    required this.IconImagePath,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 40,
                  spreadRadius: 10,
                )
              ]),
          child: Center(
            child: Image.asset(IconImagePath),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          buttonText,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
