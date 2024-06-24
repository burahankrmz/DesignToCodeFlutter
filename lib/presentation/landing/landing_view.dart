import 'package:daily_design_to_code/app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingView extends StatefulWidget {
  const LandingView({super.key});

  @override
  State<LandingView> createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky, overlays: [SystemUiOverlay.bottom]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(AssetPaths.splashImage, fit: BoxFit.fill),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 91,),
                const Center( child:  Text("Aspen", style: TextStyle(fontSize:  116, color: Colors.white, fontFamily: "Hiatus"),),),
                const SizedBox(height: 331,),
                Text("Plan your", style: GoogleFonts.montserrat(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w100),),
                Text("Luxurious", style: GoogleFonts.montserrat(color: Colors.white, fontSize: 40, fontWeight: FontWeight.w300,),),
                Text("Vacation", style: GoogleFonts.montserrat(color: Colors.white, fontSize: 40, fontWeight: FontWeight.w300),),
                const SizedBox(height: 24,),
                MaterialButton(
                  onPressed: () => Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false), color: const Color(0xff176FF2),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16) ,
                    child: Center(child: Text("Explore", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),))
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}