import 'package:flutter/material.dart';
import 'package:test_exercise/core/widgets/base_stateful_widget.dart';

class OtherTab extends BaseStatefulWidget {
  const OtherTab({Key? key}) : super(key: key);

  @override
  State<OtherTab> createState() => _HistoryTabState();
}

class _HistoryTabState extends State<OtherTab> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text(''));
  }
}
