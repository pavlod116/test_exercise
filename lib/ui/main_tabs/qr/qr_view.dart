import 'package:flutter/material.dart';
import 'package:test_exercise/core/widgets/base_stateful_widget.dart';

class QrView extends BaseStatefulWidget {
  const QrView({Key? key}) : super(key: key);

  @override
  State<QrView> createState() => _HistoryTabState();
}

class _HistoryTabState extends State<QrView> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text(''));
  }
}
