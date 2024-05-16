import 'package:flutter/material.dart';

import '../../../core/constant/app_color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.minSize = false,
    this.height = 50,
    this.width = double.infinity,
    this.radius = 10,
    this.color = AppColor.primary,
    this.elevation,
  });

  final VoidCallback onPressed;
  final Widget child;
  final double height, width, radius;
  final double? elevation;
  final Color color;
  final bool minSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        elevation: elevation,
        minimumSize: minSize ? null : Size(width, height),
        maximumSize: minSize ? null : Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      child: child,
    );
  }
}