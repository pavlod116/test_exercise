import 'package:flutter/material.dart';
import 'package:test_exercise/constants/app_colors.dart';
import 'package:test_exercise/constants/app_images.dart';
import 'package:test_exercise/constants/app_string.dart';
import 'package:test_exercise/core/ui/widgets/base_stateful_widget.dart';
import 'package:test_exercise/models/cofe_card.dart';
import 'package:test_exercise/widgets/custom_card.dart';

class BottomSheetBars extends BaseStatefulWidget {
  const BottomSheetBars({Key? key}) : super(key: key);

  @override
  State<BottomSheetBars> createState() => _BottomSheetState();
}

class _BottomSheetState extends State<BottomSheetBars> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: 0.3,
        maxChildSize: 1.0,
        minChildSize: 0.3,
        builder: (context, scrollController) {
          return Container(
            decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 14, right: 8, top: 16),
                      child: ConstrainedBox(
                          constraints: const BoxConstraints(
                            minWidth: 17,
                            minHeight: 22,
                          ),
                          child: Image.asset(AppImages.fire)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 80, top: 16),
                      child: ConstrainedBox(
                          constraints: const BoxConstraints(
                              minWidth: 234, minHeight: 24),
                          child: const Text(
                            AppString.offers,
                            style: TextStyle(fontSize: 18),
                          )),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      CafeCard item = data[index];
                      return CustomCard(item);
                    },
                    controller: scrollController,
                  ),
                ),
              ],
            ),
          );
        });
  }
}
