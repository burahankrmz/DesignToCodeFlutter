import 'package:daily_design_to_code/app/constants.dart';
import 'package:daily_design_to_code/presentation/home/home_view.dart';
import 'package:daily_design_to_code/presentation/home/model/list_popular_model.dart';
import 'package:daily_design_to_code/presentation/landing/landing_view.dart';
import 'package:daily_design_to_code/presentation/product_detail/location_detail_view.dart';
import 'package:flutter/material.dart';

final class AppRouter {
  const AppRouter._();

  static Route<dynamic>? router(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstants.landingRoute:
        final Route route = MaterialPageRoute(builder: (context) =>  const LandingView());
        return route;
      case RouteConstants.homeRoute:
        final Route route = MaterialPageRoute(builder: (context) =>  const HomeView());
        return route;
      case RouteConstants.locationDetailRoute:
        final ListPopular item = settings.arguments as ListPopular;
        final Route route = MaterialPageRoute(builder: (context) => LocationDetailView(popularItem: item));
        return route;
      default:
        final Route route = MaterialPageRoute(builder: (context) => const Scaffold());
          return route;
    }
  }
}