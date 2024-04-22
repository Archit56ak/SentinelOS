import 'package:flutter/material.dart';
import 'package:flutter_window_close/flutter_window_close.dart';
import 'package:sentinel/Features/ips_ids.dart';
import 'package:sentinel/Screens/HomePage.dart';
import 'package:sentinel/Screens/LoginPage.dart';
import 'package:sentinel/Screens/WelcomePage.dart';
import 'package:sentinel/Screens/entrypoint.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = const WindowOptions(
    size: Size(1150, 710),
    center: true,
    skipTaskbar: false,
    fullScreen: false,
    windowButtonVisibility: true,
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  FlutterWindowClose.setWindowShouldCloseHandler(() async {
    return true;
  });

  runApp(const Sentinel());
}

class Sentinel extends StatelessWidget {
  const Sentinel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomePage.id,
      routes: {
        HomePage.id: (context) => const HomePage(),
        LoginPage.id: (context) => const LoginPage(),
        WelcomePage.id: (context) => const WelcomePage(),
        EntryPoint.id: (context) => const EntryPoint(),
        IPS_IDS.id: (context) => const IPS_IDS(),
      },
    );
  }
}
