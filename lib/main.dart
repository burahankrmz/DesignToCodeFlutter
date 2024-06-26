import 'package:daily_design_to_code/root/app/app_constants.dart';
import 'package:daily_design_to_code/root/app/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);
  runApp(const DesignToCodeFlutter());
  FlutterNativeSplash.remove();
}

class DesignToCodeFlutter extends StatelessWidget {
  const DesignToCodeFlutter({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRouterConstants.projectHomeRoute,
      onGenerateRoute: (settings) => AppRouter.router(settings),
    );
  }
}