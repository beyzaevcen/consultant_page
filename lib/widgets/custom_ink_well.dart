import 'package:flutter/material.dart';

class CustomInkWell extends StatelessWidget {
  const CustomInkWell({
    Key? key,
    required this.child,
    this.onTap,
    this.radius = 16,
  }) : super(key: key);

  final Widget child;
  final void Function()? onTap;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(radius),
              onTap: onTap,
            ),
          ),
        ),
      ],
    );
  }
}

class AdjustableInkWell extends StatelessWidget {
  const AdjustableInkWell({
    Key? key,
    required this.child,
    required this.borderRadius,
    this.onTap,
  }) : super(key: key);
  final Widget child;
  final BorderRadius borderRadius;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: borderRadius,
              onTap: onTap,
            ),
          ),
        ),
      ],
    );
  }
}
