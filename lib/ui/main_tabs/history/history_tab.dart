import 'package:flutter/material.dart';
import 'package:test_exercise/core/widgets/base_stateful_widget.dart';

class HistoryTab extends BaseStatefulWidget {
  const HistoryTab({Key? key}) : super(key: key);

  @override
  State<HistoryTab> createState() => _HistoryTabState();
}

class _HistoryTabState extends State<HistoryTab> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text(''));
  }
}
