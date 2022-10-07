import 'package:flutter/material.dart';
import 'package:test_exercise/core/widgets/base_stateful_widget.dart';

class MapTab extends BaseStatefulWidget {
  const MapTab({Key? key}) : super(key: key);

  @override
  State<MapTab> createState() => _HistoryTabState();
}

class _HistoryTabState extends State<MapTab> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text(''));
  }
}
