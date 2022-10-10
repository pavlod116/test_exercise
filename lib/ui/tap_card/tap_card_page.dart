import 'package:flutter/material.dart';
import 'package:test_exercise/constants/app_colors.dart';
import 'package:test_exercise/constants/app_images.dart';
import 'package:test_exercise/core/widgets/base_stateless_widget.dart';
import 'package:test_exercise/models/cofe_card.dart';

class TapCardPage extends BaseStatelessWidget {
  const TapCardPage(this.item, {Key? key}) : super(key: key);

  final CafeCard item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroud,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                image: NetworkImage('${item.imageUrl}'),
                height: 220.0,
                width: 350.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 16, right: 30),
                    child: SizedBox(
                      width: 200,
                      height: 24,
                      child: Text(
                        '${item.name}',
                        style: const TextStyle(
                            color: AppColors.white, fontSize: 24),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 7, right: 160, left: 20),
                    child: Container(
                      width: 80,
                      height: 22,
                      child: Text(
                        textAlign: TextAlign.left,
                        '${item.price}',
                        style: const TextStyle(
                            color: AppColors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, ),
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
                      children: [
                        Text(
                          '${item.interest}',
                          style: const TextStyle(
                              color: AppColors.white, fontSize: 22),
                        ),
                        Text(
                          '${item.cashBack}',
                          style: const TextStyle(
                              color: AppColors.white, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 16, right: 16),
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
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        const Padding(
                          padding:
                              EdgeInsets.only(top: 25, left: 16, right: 45),
                          child: Text(
                            'Арома кава',
                            style:
                                TextStyle(color: AppColors.white, fontSize: 18),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Image.asset(AppImages.cafe),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 5),
                              child: Text(
                                'Кафе и Рестораны',
                                style: TextStyle(
                                    color: Colors.white12, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(width: 274, height: 24, child: Text('Рекомендации'))
        ],
      ),
    );
  }
}
