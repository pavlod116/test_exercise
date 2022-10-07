import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_exercise/constants/app_colors.dart';
import 'package:test_exercise/constants/app_images.dart';
import 'package:test_exercise/constants/app_string.dart';
import 'package:test_exercise/core/widgets/base_stateful_widget.dart';
import 'package:test_exercise/providers/home_provider.dart';
import 'package:test_exercise/ui/main_tabs/components/components.dart';
import 'package:test_exercise/widgets/bottom_sheet.dart';
import 'package:test_exercise/widgets/custom_text.dart';
import 'package:test_exercise/widgets/outlined_button.dart';
import 'package:test_exercise/widgets/piechart.dart';

class HomeTab extends BaseStatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeState();
}

class _HomeState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, homeVM, _) {
      return Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 43),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TabsComponents().buildHomeBtn(
                        image: AppImages.shop,
                        onPressed: () {},
                        style: const TextStyle(fontSize: 10, color: AppColors.white),
                        text: AppString.partners),
                    SizedBox(width: 160, height: 160, child: PieCharts()),
                    TabsComponents().buildHomeBtn(
                        image: AppImages.info,
                        onPressed: () {},
                        style: const TextStyle(fontSize: 10, color: AppColors.white),
                        text: AppString.information)
                  ],
                ),
              ),
              buildCategoryList(homeVM)
            ],
          ),
          const BottomSheetBars(),
        ],
      );
    });
  }

  Widget buildCategoryList(HomeProvider homeVM) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(padding: EdgeInsets.only(left: 16), child: Text('Категории')),
        SizedBox(
          height: 140,
          child: ListView.builder(
              padding: const EdgeInsets.only(left: 16),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: homeVM.categoryList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CustomOutlinedButton(AppColors.travel, homeVM.categoryList.values.toList()[index]),
                    CustomText(homeVM.categoryList.keys.toList()[index]),
                  ],
                );
              }),
        )
      ],
    );
  }
}
