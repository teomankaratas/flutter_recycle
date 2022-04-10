import 'package:flutter/material.dart';

class TopShapedContainer extends StatelessWidget {
  const TopShapedContainer({
    Key? key,
    required this.color,
    required this.child,
    required this.height,
    required this.width,
  }) : super(key: key);

  final Color color;
  final Widget child;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(45),
          topRight: Radius.circular(45),
        ),
      ),
      child: child,
    );
  }
}
