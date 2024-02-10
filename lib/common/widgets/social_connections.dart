import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vyld_flutter_task/utils/helper_extensions.dart';

class SocialConnections extends StatelessWidget {
  const SocialConnections({
    super.key,
    required this.title,
    required this.height,
  });

  final String title;
  final double height;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Container(
      height: height,
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title.toUpperCase(),
                  style: context.theme.textTheme.labelLarge!.copyWith(
                    color: Colors.white.withOpacity(0.6),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(flex: 2),
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SocialButton(
                  width: width,
                  bgColor: Colors.white,
                  assetLocation: 'assets/svg/google.svg',
                ),
                SocialButton(
                  width: width,
                  bgColor: Colors.blue,
                  assetLocation: 'assets/svg/facebook.svg',
                  iconColor: Colors.white,
                ),
                SocialButton(
                  width: width,
                  bgColor: Colors.pink,
                  assetLocation: 'assets/svg/instagram.svg',
                  iconColor: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.width,
    required this.bgColor,
    required this.assetLocation,
    this.iconColor,
  });

  final double width;
  final Color bgColor;
  final String assetLocation;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        fixedSize: Size(width / 3 - 24, 70),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(
          assetLocation,
          colorFilter: iconColor == null
              ? null
              : ColorFilter.mode(iconColor!, BlendMode.srcIn),
        ),
      ),
    );
  }
}
