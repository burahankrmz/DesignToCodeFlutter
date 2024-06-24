import 'package:daily_design_to_code/app/constants.dart';

final class ListPopular {
  final String locationName;
  final double locationStarRate;
  final String locationImagePath;
  const ListPopular({
    required this.locationName,
    required this.locationStarRate,
    required this.locationImagePath,
  });

  static const List<ListPopular> items = [
    ListPopular(locationName: "Alley Palace", locationStarRate: 4.1, locationImagePath: AssetPaths.popular1Image),
    ListPopular(locationName: "Coeurdes Alpes", locationStarRate: 4.5, locationImagePath: AssetPaths.popular2Image),
  ];
}