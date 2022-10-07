import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_exercise/constants/app_colors.dart';
import 'package:test_exercise/constants/app_images.dart';
import 'package:test_exercise/core/widgets/base_stateful_widget.dart';
import 'package:test_exercise/providers/main_tab_provider.dart';

class MainTab extends BaseStatefulWidget {
  const MainTab({Key? key}) : super(key: key);

  @override
  State<MainTab> createState() => _HomePageState();
}

class _HomePageState extends State<MainTab> with SingleTickerProviderStateMixin {
  GlobalKey globalKey = GlobalKey();

  AnimationController? _animationController;
  late Animation<double> animation;
  late CurvedAnimation curve;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    curve = CurvedAnimation(
      parent: _animationController!,
      curve: const Interval(0.5, 1.0, curve: Curves.easeOut),
    );
    animation = Tween<double>(begin: 1, end: 0).animate(curve);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MainTabViewModel>(builder: (context, mainVM, _) {
      return Scaffold(
        backgroundColor: AppColors.backgroud,
        floatingActionButton: FloatingActionButton(
          elevation: 8,
          backgroundColor: AppColors.backgroud,
          child: Image.asset(AppImages.qr),
          onPressed: () {},
        ),
        body: Stack(children: [mainVM.getTab()]),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar.builder(
          elevation: 1,
          itemCount: mainVM.iconList.values.length,
          height: 56,
          tabBuilder: (int index, bool isActive) {
            final color = isActive ? AppColors.focus : AppColors.unfocus;
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(mainVM.iconList.values.toList()[index], color: color),
                const SizedBox(height: 4),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    mainVM.iconList.keys.toList()[index],
                    style: TextStyle(color: color),
                  ),
                ),
              ],
            );
          },
          hideAnimationController: _animationController,
          backgroundColor: AppColors.navigatorbottom,
          activeIndex: mainVM.childIndex,
          splashColor: Colors.grey[700],
          notchAndCornersAnimation: animation,
          splashSpeedInMilliseconds: 300,
          notchSmoothness: NotchSmoothness.defaultEdge,
          gapLocation: GapLocation.center,
          onTap: (index) => mainVM.setChildIndex(index),
        ),
      );
    });
  }
}
