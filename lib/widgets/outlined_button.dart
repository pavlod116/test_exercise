import 'package:flutter/material.dart';
import 'package:test_exercise/core/widgets/base_stateless_widget.dart';
import 'package:test_exercise/models/catalog.dart';

class CustomOutlinedButton extends BaseStatelessWidget {
  const CustomOutlinedButton(this.item, {Key? key}) : super(key: key);

  final Catalog item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: item.color!, width: 3),
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(12),
        ),
        child: Image.asset("${item.image}"),
      ),
    );
  }
}
