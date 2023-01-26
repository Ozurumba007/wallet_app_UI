import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String IconImagePath;
  final String tileTitle;
  final String tileSubTitle;
  const MyListTile({
    Key? key,
    required this.IconImagePath,
    required this.tileTitle,
    required this.tileSubTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12)),
                height: 80,
                padding: EdgeInsets.all(12),
                child: Image.asset(
                  IconImagePath,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tileTitle,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    tileSubTitle,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}
