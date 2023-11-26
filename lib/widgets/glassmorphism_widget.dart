import 'package:flutter/material.dart';
import 'dart:ui';

class GlassmorphismWidget extends StatelessWidget {
  final double width;
  final double height;
  final Widget child_widget;
  const GlassmorphismWidget(
      {super.key,
      required this.width,
      required this.height,
      required this.child_widget});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      child: Container(
        padding: const EdgeInsets.all(10),
        width: width,
        height: height,
        color: Colors.transparent,
        child: Stack(
          children: [
            // effet blur
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
              child: Container(),
            ),
            // effet gradiant
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white.withOpacity(0.13)),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white.withOpacity(0.2),
                        Colors.white.withOpacity(0.15)
                      ])),
            ),
            Container(margin: const EdgeInsets.all(20), child: child_widget),
          ],
        ),
      ),
    );
  }
}
