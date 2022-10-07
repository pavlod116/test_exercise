import 'package:flutter/material.dart';
import 'package:test_exercise/constants/app_colors.dart';
import 'package:test_exercise/constants/app_images.dart';
import 'package:test_exercise/core/widgets/base_stateless_widget.dart';
import 'package:test_exercise/models/cofe_card.dart';
import 'package:test_exercise/ui/tap_card/tap_card_page.dart';

class CustomCard extends BaseStatelessWidget {
  const CustomCard(this.item, {Key? key}) : super(key: key);
  final CafeCard item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
      child: Container(
        width: 328,
        height: 76,
        color: AppColors.white,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TapCardPage()),
            );
          },
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    AppImages.coffee,
                    height: 100.0,
                    width: 100.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8, left: 15),
                      child: Text(
                        '${item.name}',
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                    Text(
                      '${item.price}',
                      style: const TextStyle(fontSize: 12),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 17, top: 9, right: 6),
                          child: SizedBox(
                              width: 10,
                              height: 13,
                              child: Image.asset(
                                AppImages.map,
                                color: AppColors.unfocus,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            '${item.location}',
                            style: const TextStyle(
                                fontSize: 12, color: AppColors.unfocus),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 57),
                  child: Container(
                    height: 32,
                    width: 62,
                    decoration: const BoxDecoration(
                      color: Colors.yellow,
                        borderRadius: BorderRadius.only(topLeft:  Radius.circular(16), bottomLeft: Radius.circular(16)),
                    ),
                    child: Column(
                      children:    [
                        Padding(
                          padding: const EdgeInsets.only(top: 2, left: 15),
                          child: Text('${item.cashBack}', style: const TextStyle(
                            fontSize: 10, color: AppColors.white
                          ),),
                        ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text('кэшбэк',style: TextStyle(
                            fontSize: 10, color: AppColors.white
                        ),),
                      )
                      ],
                    )
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
