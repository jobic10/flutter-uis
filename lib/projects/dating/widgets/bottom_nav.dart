import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final double width;
  final double height;
  final double size1;
  final double size2;
  final double size3;
  const BottomNav({
    Key? key,
    required this.width,
    required this.height,
    required this.size1,
    required this.size2,
    required this.size3,
  }) : super(key: key);
  Widget _imageButton({required String imagePath, required double imageSize}) {
    return SizedBox(
      height: imageSize,
      width: imageSize,
      child: MaterialButton(
        onPressed: () {},
        color: Colors.white,
        shape: CircleBorder(),
        child: Image.asset(
          imagePath,
          width: imageSize / 3,
          height: imageSize / 3,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _imageButton(
              imagePath: 'assets/dating/images/cancel.png', imageSize: size1),
          _imageButton(
              imagePath: 'assets/dating/images/star.png', imageSize: size2),
          _imageButton(
              imagePath: 'assets/dating/images/heart.png', imageSize: size3),
        ],
      ),
    );
  }
}
