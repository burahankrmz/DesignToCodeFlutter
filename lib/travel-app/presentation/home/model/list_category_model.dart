import 'package:daily_design_to_code/travel-app/presentation/home/data/home_categories.dart';

final class TravelAppListCategory {
  final bool isSelected;
  final String categoryName;
  const TravelAppListCategory({
    required this.isSelected,
    required this.categoryName
  });

  static final List<TravelAppListCategory> categories = TravelAppHomeCategories.categories.map((item) => TravelAppListCategory(isSelected: TravelAppHomeCategories.categories.indexOf(item) == 0 ? true : false, categoryName: item)).toList();
}