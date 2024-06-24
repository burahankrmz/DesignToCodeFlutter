import 'package:daily_design_to_code/presentation/home/data/home_categories.dart';

final class ListCategory {
  final bool isSelected;
  final String categoryName;
  const ListCategory({
    required this.isSelected,
    required this.categoryName
  });

  static final List<ListCategory> categories = HomeCategories.categories.map((item) => ListCategory(isSelected: HomeCategories.categories.indexOf(item) == 0 ? true : false, categoryName: item)).toList();
}