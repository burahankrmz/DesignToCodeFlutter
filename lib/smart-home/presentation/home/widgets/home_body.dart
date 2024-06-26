import 'package:daily_design_to_code/root/app/app_constants.dart';
import 'package:daily_design_to_code/smart-home/app/smart_home_app_constants.dart';
import 'package:daily_design_to_code/smart-home/presentation/home/widgets/air_controller.dart';
import 'package:daily_design_to_code/smart-home/presentation/home/widgets/lamp_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmartHomeAppHomeBody extends StatelessWidget {
  const SmartHomeAppHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          top: 0,
          child: Image.asset(
              height: MediaQuery.sizeOf(context).height * 0.56,
              width: MediaQuery.sizeOf(context).width,
              SmartHomeAppAssetPaths.homeBackground,
              fit: BoxFit.fill),
        ),
        Positioned(
          top: 60,
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () => Navigator.pushNamedAndRemoveUntil(context, AppRouterConstants.projectHomeRoute, (route) => false), icon: const Icon(Icons.arrow_back_ios_new, color: Color(0xffF8F8F8))),
                Text("Bedroom", style: GoogleFonts.manrope(fontSize: 17, color: const Color(0xffF8F8F8), fontWeight: FontWeight.w700)),
                IconButton(onPressed: (){}, icon: const Icon(Icons.notifications, color: Color(0xffF8F8F8))),
              ],
            ),
          ),
        ),
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
    );
  }
}
