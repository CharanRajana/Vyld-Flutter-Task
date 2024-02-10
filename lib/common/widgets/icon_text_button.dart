import 'package:flutter/material.dart';

class IconTextButton extends StatelessWidget {
  const IconTextButton({
    super.key,
    required this.text,
    required this.style,
    required this.icon,
  });

  final String text;
  final TextStyle style;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          WidgetSpan(
            child: icon,
          ),
          TextSpan(
            style: style,
            text: ' $text',
          ),
        ],
      ),
    );
  }
}
