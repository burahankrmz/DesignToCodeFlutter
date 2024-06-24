import 'package:daily_design_to_code/presentation/home/model/list_recommended_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeRecommendedWidget extends StatelessWidget {
  const HomeRecommendedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Recommended", style: GoogleFonts.montserrat(color: const Color(0xff232323), fontWeight: FontWeight.w700, fontSize: 18)),
        const SizedBox(height: 12),
        SizedBox(
          height: 142,
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return const SizedBox(width: 16);
            },
            scrollDirection: Axis.horizontal,
            itemCount: ListRecommended.items.length,
            itemBuilder: (context, index) {
              return _RecommendedItem(recommendedItem: ListRecommended.items[index]);
            },
          ),
        ),
      ],
    );
  }
}

class _RecommendedItem extends StatelessWidget {
  final ListRecommended recommendedItem;
  const _RecommendedItem({required this.recommendedItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 174,
      decoration: BoxDecoration(
        color: const Color(0xffF5F5F5),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: const Color(0xffF4F4F4),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: ClipRRect(borderRadius: BorderRadius.circular(12),child: Image.asset(recommendedItem.locationImagePath, fit: BoxFit.cover, filterQuality: FilterQuality.high)),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Text(recommendedItem.locationName, style: const TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w700),),
          )
        ],
      ),
    );
  }
}