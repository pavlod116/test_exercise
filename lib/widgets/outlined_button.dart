import 'package:flutter/material.dart';
import 'package:test_exercise/core/widgets/base_stateless_widget.dart';

class CustomOutlinedButton extends BaseStatelessWidget {
  const CustomOutlinedButton(
      this.color,
      this.image,
      {Key? key})
      : super(key: key);

  final Color color;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: color, width: 3),
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(12),
        ),
        child: Image.asset(image),
      ),
    );
  }
}
