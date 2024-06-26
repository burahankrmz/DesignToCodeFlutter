import 'package:daily_design_to_code/travel-app/app/travel_app_constants.dart';

final class ListRecommended {
  final String locationName;
  final String locationImagePath;
  const ListRecommended({
    required this.locationName,
    required this.locationImagePath
  });

  static const List<ListRecommended> items = [
    ListRecommended(locationName: "Explore Aspen", locationImagePath: TravelAppAssetPaths.recommended1Image),
    ListRecommended(locationName: "Luxurious Aspen", locationImagePath: TravelAppAssetPaths.recommended2Image),
  ];
}