import 'package:daily_design_to_code/travel-app/app/travel_app_constants.dart';

final class TravelAppListPopular {
  final String locationName;
  final double locationStarRate;
  final String locationImagePath;
  const TravelAppListPopular({
    required this.locationName,
    required this.locationStarRate,
    required this.locationImagePath,
  });

  static const List<TravelAppListPopular> items = [
    TravelAppListPopular(locationName: "Alley Palace", locationStarRate: 4.1, locationImagePath: TravelAppAssetPaths.popular1Image),
    TravelAppListPopular(locationName: "Coeurdes Alpes", locationStarRate: 4.5, locationImagePath: TravelAppAssetPaths.popular2Image),
  ];
}