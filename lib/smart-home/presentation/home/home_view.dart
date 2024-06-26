import 'package:daily_design_to_code/root/app/app_constants.dart';
import 'package:daily_design_to_code/smart-home/app/smart_home_app_constants.dart';
import 'package:daily_design_to_code/smart-home/app/smart_home_colors.dart';
import 'package:daily_design_to_code/smart-home/presentation/home/widgets/air_controller.dart';
import 'package:daily_design_to_code/smart-home/presentation/home/widgets/lamp_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmartHomeAppHomeView extends StatelessWidget {
  const SmartHomeAppHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (invoked) {
        Navigator.pushNamedAndRemoveUntil(context, AppRouterConstants.projectHomeRoute, (route) => false);
      },
      child: Scaffold(
        backgroundColor: SmartHomeColors.backGroundColor,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(top: 0, child: Image.asset(height: MediaQuery.sizeOf(context).height * 0.56, width: MediaQuery.sizeOf(context).width, SmartHomeAppAssetPaths.homeBackground, fit: BoxFit.fill),),
            Positioned(
              bottom: 0,
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.46,
                width: MediaQuery.sizeOf(context).width,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: SmartHomeAppAirController(
                                airName: "Humifier\nAir",
                                airPercent: 36,
                                isOpen: true,
                                airIcon: Icons.water_drop,
                              ),
                            ),
                            SizedBox(width: 12),
                            Expanded(
                              child: SmartHomeAppAirController(
                                airName: "Purifier\nAir",
                                airPercent: 73,
                                isOpen: true,
                                airIcon: Icons.water,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12),
                      SmartHomeAppLampController()
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: SmartHomeColors.backGroundColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10  ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(padding: EdgeInsets.zero, onPressed: (){}, icon: const Icon(Icons.home_outlined, color: SmartHomeColors.selectedIconColor)),
                IconButton(padding: EdgeInsets.zero, onPressed: (){}, icon: const Icon(Icons.search, color: SmartHomeColors.unSelectedIconColor)),
                IconButton(padding: EdgeInsets.zero, onPressed: (){}, icon: const Icon(Icons.apps_outlined, color: SmartHomeColors.unSelectedIconColor)),
                IconButton(padding: EdgeInsets.zero, onPressed: (){}, icon: const Icon(Icons.person_2_outlined, color: SmartHomeColors.unSelectedIconColor)),
              ],
            ),
          ),
        )
      ),
    );
  }
}