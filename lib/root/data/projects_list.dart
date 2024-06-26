import 'package:daily_design_to_code/root/app/app_constants.dart';
import 'package:daily_design_to_code/root/data/project_model.dart';
import 'package:daily_design_to_code/smart-home/app/smart_home_app_constants.dart';
import 'package:daily_design_to_code/travel-app/app/travel_app_constants.dart';

final class ProjectsList {
  const ProjectsList._();

  static const List<ProjectModel> projectList = [
    ProjectModel(projectName: AppProjectConstants.travelApp, projectInitialRoute: TravelAppRouteConstants.landingRoute),
    ProjectModel(projectName: AppProjectConstants.smarHomeApp, projectInitialRoute: SmartHomeAppRoutes.homeRoute)
  ];
}