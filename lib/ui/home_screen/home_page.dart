import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_exercise/constants/app_colors.dart';
import 'package:test_exercise/constants/app_images.dart';
import 'package:test_exercise/core/widgets/base_stateful_widget.dart';
import 'package:test_exercise/ui/buttom_bar/buttom_notifier.dart';
import 'package:test_exercise/ui/home_screen/home.dart';

class HomePage extends BaseStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static final List<Widget> _children = <Widget>[
    const Home(),
    const Center(child: Text('add')),
    const Center(child: Text('sha')),
    const Center(child: Text('fjf')),
    const Center(child: Text('fjf')),
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BottomNotifier>(
        create: (_) => BottomNotifier(),
        builder: (context, child) {
          return Scaffold(
            backgroundColor: AppColors.backgroud,
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: AppColors.navigatorbottom,
              selectedFontSize: 14,
              unselectedFontSize: 14,
              onTap: (int index) {
                Provider.of<BottomNotifier>(context, listen: false).childIndex =
                    index;
              },
              items: [
                BottomNavigationBarItem(
                  icon: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minWidth: 21.5,
                      minHeight: 21.5,
                    ),
                    child: Image.asset(AppImages.house,
                        color:
                            Provider.of<BottomNotifier>(context).childIndex == 0
                                ? AppColors.focus
                                : AppColors.unfocus),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                    icon: Image.asset(AppImages.history,
                        color:
                            Provider.of<BottomNotifier>(context).childIndex == 1
                                ? AppColors.focus
                                : AppColors.unfocus),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Image.asset(AppImages.qr,
                        color:
                            Provider.of<BottomNotifier>(context).childIndex == 2
                                ? AppColors.focus
                                : AppColors.unfocus),
                    label: ''),
                BottomNavigationBarItem(
                  icon: Image.asset(AppImages.map,
                      color:
                          Provider.of<BottomNotifier>(context).childIndex == 3
                              ? AppColors.focus
                              : AppColors.unfocus),
                  label: '',
                ),
                BottomNavigationBarItem(
                    icon: Image.asset(AppImages.more,
                        color:
                            Provider.of<BottomNotifier>(context).childIndex == 4
                                ? AppColors.focus
                                : AppColors.unfocus),
                    label: ''),
              ],
            ),
            body: Stack(children: [
              _children[Provider.of<BottomNotifier>(context).childIndex],
            ]),
          );
        });
  }
}
