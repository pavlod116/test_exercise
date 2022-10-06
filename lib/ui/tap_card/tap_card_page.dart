import 'package:flutter/material.dart';
import 'package:test_exercise/constants/app_colors.dart';
import 'package:test_exercise/constants/app_images.dart';
import 'package:test_exercise/core/ui/widgets/base_stateful_widget.dart';

class TapCardPage extends BaseStatefulWidget {
  const TapCardPage({Key? key}) : super(key: key);

  @override
  State<TapCardPage> createState() => _TapCardPageState();
}

class _TapCardPageState extends State<TapCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroud,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                AppImages.coffee,
                height: 220.0,
                width: 350.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 278, left: 16, right: 30),
                child: Container(
                  width: 200,
                  height: 24,
                  child: const Text(
                    'Айс Латте',
                    style: TextStyle(color: AppColors.white, fontSize: 24),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, right: 160, left: 20),
                child: Container(
                  width: 80,
                  height: 22,
                  child: const Text(
                    'цена: 35 ₴ ',
                    style: TextStyle(color: AppColors.white, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 278, left: 260),
            child: Container(
              height: 48,
              width: 104,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  border: Border.all(
                      width: 2,
                      color: Colors.yellow,
                      style: BorderStyle.solid)),
              child: Column(
                children: const [
                  Text(
                    '10 %',
                    style: TextStyle(color: AppColors.white, fontSize: 22),
                  ),
                  Text(
                    'кэшбэк',
                    style: TextStyle(color: AppColors.white, fontSize: 12),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 346, left: 16, right: 16),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                width: 328,
                height: 92,
                color: Colors.white.withOpacity(0.5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Container(
                            width: 100,
                            height: 60,
                            color: AppColors.white,
                            child: Center(child: Image.asset(AppImages.aroma)),
                          ),),
                    ),
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 25, left: 16, right: 45),
                          child: Text(
                            'Арома кава',
                            style: TextStyle(color: AppColors.white, fontSize: 18),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Image.asset(AppImages.cafe),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 5),
                              child: Text(
                                'Кафе и Рестораны',
                                style: TextStyle(color: Colors.white12, fontSize: 14),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
