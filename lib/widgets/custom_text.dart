import 'package:flutter/material.dart';
import 'package:test_exercise/constants/app_colors.dart';
import 'package:test_exercise/core/widgets/base_stateless_widget.dart';

class CustomText extends BaseStatelessWidget {
  const CustomText(this.text, {Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 8, left: 4, right: 4, bottom: 35),
    child: SizedBox(
      width: 74,
      height: 24,
      child: Text(
        textAlign: TextAlign.center,
        text,
        style: const TextStyle(color: AppColors.white, fontSize: 10, ),
      ),
    ),
    );
  }
}
