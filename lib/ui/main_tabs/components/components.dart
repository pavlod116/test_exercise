import 'package:flutter/material.dart';

class TabsComponents {
  Widget buildHomeBtn(
      {void Function()? onPressed,
      Color? backgroundColor,
      required String image,
      required TextStyle style,
      required String text}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor,
              fixedSize: const Size(40, 40),
              shape: const CircleBorder(),
            ),
            child: Image.asset(image)),
        const SizedBox(height: 4),
        Text(text, style: style, textAlign: TextAlign.center)
      ],
    );
  }
}
