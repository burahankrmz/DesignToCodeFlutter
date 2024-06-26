import 'package:daily_design_to_code/travel-app/presentation/home/model/list_popular_model.dart';
import 'package:daily_design_to_code/travel-app/presentation/product_detail/widget/facilities_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TravelAppLocationDetailView extends StatelessWidget {
  final TravelAppListPopular popularItem;
  const TravelAppLocationDetailView({super.key, required this.popularItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          _LocationImage(imagePath: popularItem.locationImagePath),
          _LocationDescription(locationName: popularItem.locationName, locationStarRate: popularItem.locationStarRate),
          const SizedBox(height: 32),
          const _LocationFacilities(),
        ],
      ),
      bottomNavigationBar: const _LocationDetailsBottomBar(),
    );
  }
}

class _LocationDetailsBottomBar extends StatelessWidget {
  const _LocationDetailsBottomBar();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kBottomNavigationBarHeight + 28,
      width: MediaQuery.sizeOf(context).width,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 28),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Price", style: TextStyle(color: Color(0xff232323), fontSize: 12, fontWeight: FontWeight.w600)),
                const SizedBox(height: 4),
                Text('\$199', style: GoogleFonts.montserrat(fontSize: 23, fontWeight: FontWeight.bold, color: const Color(0xff2DD7A4)),)
              ],
            ),
            Container(
              height: double.maxFinite,
              decoration: BoxDecoration(
                color: const Color(0xff196EEE),
                borderRadius: BorderRadius.circular(32),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(34, 24),
                    blurRadius: 77,
                    spreadRadius: 0,
                    color: const Color(0xff0858D0).withOpacity(0.17)
                  )
                ]
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 56),
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Book Now", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
                      SizedBox(width: 10,),
                      Icon(Icons.arrow_right_alt, color: Colors.white)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LocationFacilities extends StatelessWidget {
  const _LocationFacilities();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Facilities", style: GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.w700, color: const Color(0xff232323))),
        const SizedBox(height: 16),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FacilitiesCard(facilitiesIcon: Icons.wifi, facilitiesName: "1 Heater"),
            FacilitiesCard(facilitiesIcon: Icons.dinner_dining, facilitiesName: "Dinner"),
            FacilitiesCard(facilitiesIcon: Icons.hot_tub, facilitiesName: "1 Tub"),
            FacilitiesCard(facilitiesIcon: Icons.pool, facilitiesName: "Pool"),
          ],
        )
      ],
    );
  }
}

class _LocationDescription extends StatelessWidget {
  final String locationName;
  final double locationStarRate;
  const _LocationDescription({required this.locationName, required this.locationStarRate});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(locationName, style: GoogleFonts.montserrat(fontSize: 24, color: const Color(0xff232323), fontWeight: FontWeight.w700)),
              TextButton(onPressed: (){}, child: const Text("Show map", style: TextStyle(fontSize: 14, color: Color(0xff196EEE), fontWeight: FontWeight.bold))),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              const Icon(Icons.star, size: 16, color: Color(0xffB47820)),
              const SizedBox(width: 4),
              Text("$locationStarRate  (355 Reviews)", style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300)),
            ],
          ),
          const SizedBox(height: 16),
          const Text("Aspen is a close as one can get to a storybook alpine town in America. The-choose-your-own-adventure possibilities--skiing, hiking, dining shopping and ...."),
          const SizedBox(height: 9),
          InkWell(
            onTap: () {},
            child: Ink(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Read More", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xff196EEE))),
                  SizedBox(width: 4),
                  Icon(Icons.expand_more_outlined, color: Color(0xff196EEE))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LocationImage extends StatelessWidget {
  final String imagePath;
  const _LocationImage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 362,
      child: Stack(
        children: [
          SizedBox(
            width: 335,
            height: 340,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20), 
              child: Image.asset(imagePath, fit: BoxFit.fill)
            ),
          ),
          Positioned(
            top: 12,
            left: 12,
            child: InkWell(
              onTap: () => Navigator.pop(context),
              child: Ink(
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xffF3F8FE),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: const Center(
                    child: Icon(Icons.arrow_back_ios_new, color: Color(0xffB8B8B8), size: 10),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 36,
            bottom: 0,
            child: Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                color: const Color(0xffF2F7FD),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 6),
                    blurRadius: 19,
                    spreadRadius: 0,
                    color: const Color(0xff0038FF).withOpacity(0.10)
                  )
                ]
              ),
              child: const Icon(Icons.favorite, color: Color(0xffEC5655))
            ),
          )
        ],
      ),
    );
  }
}