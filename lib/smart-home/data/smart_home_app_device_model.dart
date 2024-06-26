import 'package:daily_design_to_code/smart-home/app/smart_home_app_constants.dart';

final class SmartHomeAppDeviceModel {
  final String deviceImagePath;
  final String deviceName;
  final String deviceType;
  const SmartHomeAppDeviceModel({
    required this.deviceImagePath,
    required this.deviceName,
    required this.deviceType
  });

  static const List<SmartHomeAppDeviceModel> devicesMockList = [
    SmartHomeAppDeviceModel(deviceImagePath: SmartHomeAppAssetPaths.device1, deviceName: "Bork V530", deviceType: "Vacuum Cleaner"),
    SmartHomeAppDeviceModel(deviceImagePath: SmartHomeAppAssetPaths.device2, deviceName: "LIFX LED Light", deviceType: "Smart Bulb"),
    SmartHomeAppDeviceModel(deviceImagePath: SmartHomeAppAssetPaths.device3, deviceName: "Xiaomi DEM-F600", deviceType: "Humidifier"),
  ];
}