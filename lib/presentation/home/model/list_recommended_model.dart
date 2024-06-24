import 'package:daily_design_to_code/app/constants.dart';

final class ListRecommended {
  final String locationName;
  final String locationImagePath;
  const ListRecommended({
    required this.locationName,
    required this.locationImagePath
  });

  static const List<ListRecommended> items = [
    ListRecommended(locationName: "Explore Aspen", locationImagePath: AssetPaths.recommended1Image),
    ListRecommended(locationName: "Luxurious Aspen", locationImagePath: AssetPaths.recommended2Image),
  ];
}