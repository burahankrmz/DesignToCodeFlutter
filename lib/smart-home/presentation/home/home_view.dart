import 'package:daily_design_to_code/root/app/app_constants.dart';
import 'package:daily_design_to_code/smart-home/app/smart_home_app_enums.dart';
import 'package:daily_design_to_code/smart-home/app/smart_home_colors.dart';
import 'package:daily_design_to_code/smart-home/presentation/home/widgets/home_body.dart';
import 'package:daily_design_to_code/smart-home/presentation/search/widgets/search_body.dart';
import 'package:flutter/material.dart';

class SmartHomeAppHomeView extends StatefulWidget {
  const SmartHomeAppHomeView({super.key});

  @override
  State<SmartHomeAppHomeView> createState() => _SmartHomeAppHomeViewState();
}

class _SmartHomeAppHomeViewState extends State<SmartHomeAppHomeView>
    with _SmartHomeAppMixin {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (invoked) {
        Navigator.pushNamedAndRemoveUntil(
            context, AppRouterConstants.projectHomeRoute, (route) => false);
      },
      child: Scaffold(
        backgroundColor: SmartHomeColors.backGroundColor,
        body: ValueListenableBuilder<SmartHomeAppPages>(
          valueListenable: pageNotifier,
          builder: (context, SmartHomeAppPages currentPage, child) {
            if (currentPage == SmartHomeAppPages.home) {
              return const SmartHomeAppHomeBody();
            }
            if (currentPage == SmartHomeAppPages.search) {
              return const SmartHomeAppSearchBody();
            } else {
              return const SizedBox();
            }
          },
        ),
        bottomNavigationBar: BottomAppBar(
          color: SmartHomeColors.backGroundColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ValueListenableBuilder<SmartHomeAppPages>(
                valueListenable: pageNotifier,
                builder: (context, SmartHomeAppPages currentPage, child) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () => setPage(SmartHomeAppPages.home),
                          icon: Icon(Icons.home_outlined,
                              color: currentPage == SmartHomeAppPages.home
                                  ? SmartHomeColors.selectedIconColor
                                  : Colors.white)),
                      IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () => setPage(SmartHomeAppPages.search),
                          icon: Icon(Icons.search,
                              color: currentPage == SmartHomeAppPages.search
                                  ? SmartHomeColors.selectedIconColor
                                  : Colors.white)),
                      IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          icon: const Icon(Icons.apps_outlined,
                              color: SmartHomeColors.unSelectedIconColor)),
                      IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          icon: const Icon(Icons.person_2_outlined,
                              color: SmartHomeColors.unSelectedIconColor)),
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }
}

mixin _SmartHomeAppMixin on State<SmartHomeAppHomeView> {
  final ValueNotifier<SmartHomeAppPages> pageNotifier =
      ValueNotifier<SmartHomeAppPages>(SmartHomeAppPages.home);

  setPage(SmartHomeAppPages page) {
    pageNotifier.value = page;
  }
}
