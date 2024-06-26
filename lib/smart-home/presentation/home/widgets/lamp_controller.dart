import 'package:daily_design_to_code/smart-home/app/smart_home_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmartHomeAppLampController extends StatelessWidget {
  const SmartHomeAppLampController({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: SmartHomeColors.specsContainerBackgroundColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20),
            child: Text(
              "Main light",
              style: GoogleFonts.manrope(
                  fontSize: 12,
                  fontWeight: FontWeight.w100,
                  color: const Color(0xffF8F8F8)),
            ),
          ),
          Row(
            children: [
              Expanded(child: Slider(value: 70 / 100, onChanged: (val) => {})),
              const Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Icon(
                  Icons.lightbulb_outline,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text("Floor lamp",
                style: GoogleFonts.manrope(
                    fontSize: 12,
                    fontWeight: FontWeight.w100,
                    color: const Color(0xffF8F8F8))),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Row(
              children: [
                Expanded(
                    child: Slider(value: 45 / 100, onChanged: (val) => {})),
                const Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Icon(
                    Icons.light,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
