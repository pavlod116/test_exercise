import 'package:flutter/material.dart';
import 'package:test_exercise/constants/app_colors.dart';
import 'package:test_exercise/constants/app_images.dart';
import 'package:test_exercise/constants/app_string.dart';
import 'package:test_exercise/core/widgets/base_stateful_widget.dart';
import 'package:test_exercise/widgets/bottom_sheet.dart';
import 'package:test_exercise/widgets/custom_text.dart';
import 'package:test_exercise/widgets/outlined_button.dart';
import 'package:test_exercise/widgets/piechart.dart';

class Home extends BaseStatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 34, top: 113),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.iconbutton,
                  fixedSize: const Size(40, 40),
                  shape: const CircleBorder(),
                ),
                child: Image.asset(AppImages.shop),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 165, right: 34, top: 113),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.iconbutton,
                    fixedSize: const Size(40, 40),
                    shape: const CircleBorder(),
                  ),
                  child: Image.asset(AppImages.shop),
                ),
              ),
            ),
          ],
        ),
        Padding(
            padding: const EdgeInsets.only(left: 100, right: 100, top: 63),
            child: SizedBox(
              width: 160,
              height: 160,
              child: PieCharts(),
            )),
        const Padding(
          padding: EdgeInsets.only(left: 30, right: 260, top: 160),
          child: SizedBox(
            width: 68,
            height: 16,
            child: Text(AppString.partners,
                style: TextStyle(
                  fontSize: 10,
                  color: AppColors.white,
                ),
                textAlign: TextAlign.center),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 260, right: 20, top: 160),
          child: SizedBox(
              width: 68,
              height: 16,
              child: Text(
                AppString.information,
                style: TextStyle(fontSize: 10, color: AppColors.white),
                textAlign: TextAlign.center,
              )),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16, right: 70, top: 255),
          child: SizedBox(
              width: 274,
              height: 24,
              child: Text(
                AppString.categories,
                style: TextStyle(fontSize: 18, color: AppColors.white),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 22, top: 295),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Column(
                children: const [
                  CustomOutlinedButton(
                      AppColors.marketplace, AppImages.marketplace),
                  CustomText(AppString.marketplaces),
                ],
              ),
              Column(
                children: const [
                  CustomOutlinedButton(AppColors.clothes, AppImages.clothes),
                  CustomText(AppString.clothing),
                ],
              ),
              Column(
                children: const [
                  CustomOutlinedButton(AppColors.services, AppImages.travel),
                  CustomText(AppString.cities),
                ],
              ),
              Column(
                children: const [
                  CustomOutlinedButton(AppColors.beauty, AppImages.beauty),
                  CustomText(AppString.beauty),
                ],
              ),
              Column(
                children: const [
                  CustomOutlinedButton(AppColors.travel, AppImages.travel),
                  CustomText(AppString.travel),
                ],
              ),
              Column(
                children: const [
                  CustomOutlinedButton(
                      AppColors.services, AppImages.marketplace),
                  CustomText(AppString.services),
                ],
              ),
            ],
          ),
        ),
        const BottomSheetBars(),
      ],
    );
  }
}
