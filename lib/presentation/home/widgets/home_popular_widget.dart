import 'package:daily_design_to_code/app/constants.dart';
import 'package:daily_design_to_code/presentation/home/model/list_popular_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePopularWidget extends StatelessWidget {
  const HomePopularWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Popular", style: GoogleFonts.montserrat(color: const Color(0xff232323), fontWeight: FontWeight.w700, fontSize: 18)),
            TextButton(onPressed: (){}, child: const Text("See all", style: TextStyle(fontSize: 12, color: Color(0xff196EEE)),))
          ],
        ),
        SizedBox(
          height: 240,
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return const SizedBox(width: 28);
            },
            scrollDirection: Axis.horizontal,
            itemCount: ListPopular.items.length,
            itemBuilder: (context, index) {
              return _PopularItem(popularItem: ListPopular.items[index], onTap: (){Navigator.pushNamed(context, RouteConstants.locationDetailRoute, arguments: ListPopular.items[index]);});
            },
          ),
        )
      ],
    );
  }
}

class _PopularItem extends StatelessWidget {
  final VoidCallback onTap;
  final ListPopular popularItem;
  const _PopularItem({required this.popularItem, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Stack(
          children: [
            Image.asset(popularItem.locationImagePath),
            Positioned(
              bottom: 12,
              left: 12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xff4D5652),
                      borderRadius: BorderRadius.circular(55)
                    ),
                    child: Text(popularItem.locationName, style: const TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w300),),
                  ),
                  const SizedBox(height: 6,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xff4D5652),
                      borderRadius: BorderRadius.circular(55)
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.star, color: Color(0xffF8D675), size: 16),
                        const SizedBox(width: 4),
                        Text(popularItem.locationStarRate.toString(), style: const TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w300)),
                      ],
                    )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}