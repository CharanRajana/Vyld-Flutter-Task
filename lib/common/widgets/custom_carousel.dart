import 'package:flutter/material.dart';
import 'dart:math';

import 'package:vyld_flutter_task/utils/helper_extensions.dart';

class CustomCarousel extends StatelessWidget {
  const CustomCarousel({
    super.key,
    required this.title,
    required this.height,
    this.separationWidth = 12,
    this.bgExists = false,
    required this.widgets,
  });

  final String title;
  final double height;
  final double separationWidth;
  final bool bgExists;
  final List<Widget> widgets;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title.toUpperCase(),
                  style: context.theme.textTheme.labelLarge!.copyWith(
                    color: Colors.white.withOpacity(0.6),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.withOpacity(0.2),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                  ),
                  child: Text(
                    'see all',
                    style: context.theme.textTheme.labelLarge!.copyWith(
                      color: Colors.white.withOpacity(0.6),
                    ),
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 7,
            child: Stack(
              children: [
                if (bgExists)
                  for (int i = 0; i < 30; i++)
                    CircularFloatingIcons(height: height),
                ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: widgets.length,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: separationWidth,
                    );
                  },
                  itemBuilder: (context, index) {
                    return widgets[index];
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CircularFloatingIcons extends StatelessWidget {
  const CircularFloatingIcons({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    final random = Random();
    final width = MediaQuery.sizeOf(context).width;
    return Positioned(
      left: random.nextDouble() * width,
      top: random.nextDouble() * height * 0.6,
      child: Container(
        width: 10.0,
        height: 10.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromARGB(
            255,
            Random().nextInt(256),
            Random().nextInt(256),
            Random().nextInt(256),
          ),
        ),
      ),
    );
  }
}
