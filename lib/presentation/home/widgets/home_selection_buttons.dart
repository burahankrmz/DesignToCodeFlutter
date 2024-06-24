import 'package:daily_design_to_code/presentation/home/model/list_category_model.dart';
import 'package:flutter/material.dart';

class HomeSelectionButtons extends StatefulWidget {
  const HomeSelectionButtons({super.key});

  @override
  State<HomeSelectionButtons> createState() => _HomeSelectionButtonsState();
}

class _HomeSelectionButtonsState extends State<HomeSelectionButtons> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(width: 28,);
        },
        scrollDirection: Axis.horizontal,
        itemCount: ListCategory.categories.length,
        itemBuilder: (context, index) {
          return _CategorySelectionButton(
            onTap: () => setState((){
              if(ListCategory.categories[index].isSelected == true) {
                null;
              } else {
                for(int i = 0; i < ListCategory.categories.length; i++) {
                  if(ListCategory.categories[i].isSelected == true) {
                    ListCategory.categories[i] = ListCategory(isSelected: false, categoryName: ListCategory.categories[i].categoryName);
                    ListCategory.categories[index] = ListCategory(isSelected: true, categoryName: ListCategory.categories[index].categoryName);
                  }
                }
              }
              
            }),
            isSelected: ListCategory.categories[index].isSelected,
            categoryName: ListCategory.categories[index].categoryName
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