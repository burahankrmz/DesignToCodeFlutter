import 'package:daily_design_to_code/root/app/app_constants.dart';
import 'package:daily_design_to_code/root/presentation/home/root_home.dart';
import 'package:daily_design_to_code/smart-home/app/smart_home_app_constants.dart';
import 'package:daily_design_to_code/smart-home/presentation/home/home_view.dart';
import 'package:daily_design_to_code/travel-app/app/travel_app_constants.dart';
import 'package:daily_design_to_code/travel-app/presentation/home/home_view.dart';
import 'package:daily_design_to_code/travel-app/presentation/home/model/list_popular_model.dart';
import 'package:daily_design_to_code/travel-app/presentation/landing/landing_view.dart';
import 'package:daily_design_to_code/travel-app/presentation/product_detail/location_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final class AppRouter {
  const AppRouter._();

  static Route<dynamic>? router(RouteSettings settings) {
    switch (settings.name) {
      //! Root Routes
      case AppRouterConstants.projectHomeRoute:
        final Route route = MaterialPageRoute(builder: (context) =>  const RootHome());
        return route;
      //! Smart Home App Routes
      case SmartHomeAppRoutes.homeRoute:
        final Route route = MaterialPageRoute(builder: (context) =>  const SmartHomeAppHomeView());
        return route;
      //! Travel App Routes
      case TravelAppRouteConstants.landingRoute:
        final Route route = MaterialPageRoute(builder: (context) =>  const TravelAppLandingView());
        return route;
      case TravelAppRouteConstants.homeRoute:
        final Route route = MaterialPageRoute(builder: (context) =>  const TravelAppHomeView());
        return route;
      case TravelAppRouteConstants.locationDetailRoute:
        final TravelAppListPopular item = settings.arguments as TravelAppListPopular;
        final Route route = MaterialPageRoute(builder: (context) => TravelAppLocationDetailView(popularItem: item));
        return route;
      default:
        final Route route = MaterialPageRoute(builder: (context) => const Scaffold());
          return route;
    }
  }
}