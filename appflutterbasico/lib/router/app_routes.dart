import 'package:appflutterbasico/models/models.dart';
import 'package:appflutterbasico/screens/screens.dart';

import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = '/home';

  static final menuOption = <MenuOption>[
    MenuOption(
        route: '/home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home_max_sharp),
    MenuOption(
        route: '/listView1',
        name: 'List View 1',
        screen: const ListView1Screen(),
        icon: Icons.list_alt),
    MenuOption(
        route: '/listView2',
        name: 'List View 2',
        screen: const ListView2Screen(),
        icon: Icons.list),
    MenuOption(
        route: '/cardscreen',
        name: 'Card Screen',
        screen: const CardScreen(),
        icon: Icons.credit_card),
    MenuOption(
        route: '/alertscreen',
        name: 'Alert Screen',
        screen: const AlertScreen(),
        icon: Icons.bus_alert_sharp)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes
        .addAll({'/home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOption) {
      appRoutes.addAll({
        option.route: (BuildContext context) => option.screen,
      });
    }
    return appRoutes;
  }

  //}static Map<String, Widget Function(BuildContext)> routes = {
  //}  '/home': (BuildContext context) => const HomeScreen(),
  //}  '/listView1': (BuildContext context) => const ListView1Screen(),
  //}  '/listView2': (BuildContext context) => const ListView2Screen(),
  //}  '/cardscreen': (BuildContext context) => const CardScreen(),
  //}  '/alertscreen': (BuildContext context) => const AlertScreen(),
  //}};

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
