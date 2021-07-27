import 'package:flutter/material.dart';

class InterestCard extends StatelessWidget {
  final Color color;
  final String text;
  const InterestCard({
    Key? key,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color.withAlpha(100),
        borderRadius: BorderRadius.circular(
          15,
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: 16,
        ),
      ),
    );
  }
}
