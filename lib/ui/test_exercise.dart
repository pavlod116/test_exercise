import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_exercise/core/widgets/base_stateful_widget.dart';
import 'package:test_exercise/providers/home_provider.dart';
import 'package:test_exercise/providers/main_tab_provider.dart';
import 'package:test_exercise/ui/main_tabs/main_tab.dart';

class TestExercise extends BaseStatefulWidget {
  const TestExercise({Key? key}) : super(key: key);

  @override
  State<TestExercise> createState() => _TestExerciseState();
}

class _TestExerciseState extends State<TestExercise> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeProvider()),
        ChangeNotifierProvider(create: (_) => MainTabViewModel()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainTab(),
      ),
    );
  }
}
