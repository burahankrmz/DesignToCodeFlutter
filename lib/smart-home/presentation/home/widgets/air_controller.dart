import 'package:daily_design_to_code/smart-home/app/smart_home_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmartHomeAppAirController extends StatelessWidget {
  final String airName;
  final bool isOpen;
  final int airPercent;
  final IconData airIcon;
  const SmartHomeAppAirController({
    super.key,
    required this.airName,
    required this.isOpen,
    required this.airPercent,
    required this.airIcon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: SmartHomeColors.specsContainerBackgroundColor,
        borderRadius: BorderRadius.circular(24)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "$airPercent%", 
                  style: GoogleFonts.manrope(fontSize: 32, color: Colors.white, fontWeight: FontWeight.w500),
                ),
                Icon(airIcon, color: Colors.white, size: 24)
              ],
            ),
            const SizedBox(height: 8),
            Text(airName, style: GoogleFonts.manrope(fontWeight: FontWeight.w100, fontSize: 12, color: Colors.white)),
            const SizedBox(height: 32),
            const Divider(thickness: 2, color: Color(0xff393535)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(isOpen ? "On" : "False", style: GoogleFonts.manrope(fontWeight: FontWeight.w100, fontSize: 12, color: const Color(0xffF8F8F8))),
                SizedBox(
                  height: 26,
                  child: Switch(value: true, onChanged: (val) => {}, activeColor: const Color(0xffFFB267)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
