import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_exercise/core/ui/widgets/base_stateful_widget.dart';
import 'package:test_exercise/ui/home_screen/home_page.dart';
import 'package:test_exercise/ui/home_screen/home_provider.dart';

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
    ],
      child:  const MaterialApp(
          debugShowCheckedModeBanner: false,

        home:  HomePage(),
      ),
    );
  }
}
