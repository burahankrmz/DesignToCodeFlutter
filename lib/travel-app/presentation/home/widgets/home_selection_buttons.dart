import 'package:daily_design_to_code/travel-app/presentation/home/model/list_category_model.dart';
import 'package:flutter/material.dart';

class TravelAppHomeSelectionButtons extends StatefulWidget {
  const TravelAppHomeSelectionButtons({super.key});

  @override
  State<TravelAppHomeSelectionButtons> createState() => _TravelAppHomeSelectionButtonsState();
}

class _TravelAppHomeSelectionButtonsState extends State<TravelAppHomeSelectionButtons> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(width: 28,);
        },
        scrollDirection: Axis.horizontal,
        itemCount: TravelAppListCategory.categories.length,
        itemBuilder: (context, index) {
          return _CategorySelectionButton(
            onTap: () => setState((){
              if(TravelAppListCategory.categories[index].isSelected == true) {
                null;
              } else {
                for(int i = 0; i < TravelAppListCategory.categories.length; i++) {
                  if(TravelAppListCategory.categories[i].isSelected == true) {
                    TravelAppListCategory.categories[i] = TravelAppListCategory(isSelected: false, categoryName: TravelAppListCategory.categories[i].categoryName);
                    TravelAppListCategory.categories[index] = TravelAppListCategory(isSelected: true, categoryName: TravelAppListCategory.categories[index].categoryName);
                  }
                }
              }
              
            }),
            isSelected: TravelAppListCategory.categories[index].isSelected,
            categoryName: TravelAppListCategory.categories[index].categoryName
          );
        },
      ),
    );
  }
}

class _CategorySelectionButton extends StatelessWidget {
  final VoidCallback onTap;
  final bool isSelected;
  final String categoryName;
  const _CategorySelectionButton({required this.onTap, required this.isSelected, required this.categoryName});

  TextStyle getTextStyle() {
    switch (isSelected) {
      case true:
        return const TextStyle(color: Color(0xff176FF2), fontSize: 14, fontWeight: FontWeight.bold);
      default:
        return const TextStyle(color: Color(0xffB8B8B8), fontSize: 14, fontWeight: FontWeight.w500);
    }
  }

  @override
  Widget build(BuildContext context) {
    final Color? color = isSelected ? const Color(0xff176FF2).withOpacity(0.05) : null;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(33),
          color: color
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Center(
            child: Text(categoryName, style: getTextStyle(),
            ),
          ),
        ),
      ),
    );
  }
}