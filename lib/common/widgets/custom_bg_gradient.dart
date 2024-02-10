import 'dart:ui';

import 'package:flutter/material.dart';

class BackgroundGradientWidget extends StatelessWidget {
  const BackgroundGradientWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        Align(
          alignment: const AlignmentDirectional(-4, -1),
          child: Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink,
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0, -1.5),
          child: Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.purple,
            ),
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
          child: Container(
            decoration: const BoxDecoration(color: Colors.transparent),
          ),
        )
      ],
    );
  }
}
