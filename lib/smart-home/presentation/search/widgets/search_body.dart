import 'package:daily_design_to_code/smart-home/data/smart_home_app_device_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SmartHomeAppSearchBody extends StatelessWidget {
  const SmartHomeAppSearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment:  CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Search", style: GoogleFonts.manrope(fontSize: 32, fontWeight: FontWeight.w400, color: const Color(0xffF8F8F8))),
                Text("Wifi:tw1r_413_7G", style: GoogleFonts.manrope(fontSize: 12, fontWeight: FontWeight.w400, color: const Color(0xffF8F8F8).withOpacity(0.6)))
              ],
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("3 new devices", style: GoogleFonts.manrope(fontSize: 17, fontWeight: FontWeight.w400, color: const Color(0xffF8F8F8).withOpacity(0.6)))),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 12, mainAxisSpacing: 12, childAspectRatio: 0.80),
                itemCount: SmartHomeAppDeviceModel.devicesMockList.length + 1,
                itemBuilder: (context, index) {
                  if(index == SmartHomeAppDeviceModel.devicesMockList.length ) {
                    return Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff282424),
                        borderRadius: BorderRadius.circular(24)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.wifi, size: 43, color: Color(0xffF8F8F8),),
                            const SizedBox(height: 16),
                            Text("Not Found Device", textAlign: TextAlign.center,style: GoogleFonts.manrope(fontSize: 17, fontWeight: FontWeight.w700, color: const Color(0xffF8F8F8))),
                            const SizedBox(height: 16),
                            TextButton(
                              onPressed: (){},
                              child: Text("Select manually", textAlign: TextAlign.center, style: GoogleFonts.manrope(fontSize: 12, fontWeight: FontWeight.w400, color: const Color(0xffFFB267))),
                            )
                          ],
                        ),
                      ),
                    );
                  } else {
                    return Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff282424),
                        borderRadius: BorderRadius.circular(24)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(SmartHomeAppDeviceModel.devicesMockList[index].deviceImagePath),
                            const SizedBox(height: 16),
                            Text(SmartHomeAppDeviceModel.devicesMockList[index].deviceName, textAlign: TextAlign.center, style: GoogleFonts.manrope(fontSize: 17, fontWeight: FontWeight.w700, color: const Color(0xffF8F8F8))),
                            const SizedBox(height: 16),
                            Text(SmartHomeAppDeviceModel.devicesMockList[index].deviceType, textAlign: TextAlign.center, style: GoogleFonts.manrope(fontSize: 12, fontWeight: FontWeight.w400, color: const Color(0xffF8F8F8).withOpacity(0.6))),
                          ],
                        ),
                      ),
                    );
                  }
                }
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MaterialButton(
              onPressed: (){},
              minWidth: MediaQuery.sizeOf(context).width,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              color: const Color(0xffFFB267),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 19.5),
                child: Text("Add device")
              ),
            ),
          )
        ],
      ),
    );
  }
}