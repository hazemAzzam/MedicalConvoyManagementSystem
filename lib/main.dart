import 'package:flutter/material.dart';

import 'presentation/resources/responsive/app_settings.dart';
import 'presentation/resources/responsive/responsive.dart';
import 'presentation/resources/theme_manager.dart';
import 'presentation/screens/desktop/home.dart';
import 'presentation/screens/mobile/home.dart';
import 'presentation/screens/tablet/home.dart';

void main() async {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getApplicationTheme(context),
      // darkTheme: ThemeData(brightness: Brightness.dark),
      // themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AppSettings.init(context);
    // TODO: Find a way to implement the same thing but never initialize
    // unnecessary widgets.
    // regarding optimizing the launch of the app.
    // Is it possible to build only the required widget for the device,
    // either mobile, desktop, or tablet,
    // instead of building all the widgets and returning
    // the appropriate one? This approach could potentially
    // enhance the launch of the app and improve overall performance.
    return const Responsive(
      mobile: HomeScreenMobile(),
      tablet: HomeScreenTablet(),
      desktop: HomeScreenDesktop(),
    );
  }
}
