import 'package:appflutterbasico/screens/screens.dart';

import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = '/home';

  static Map<String, Widget Function(BuildContext)> routes = {
    '/home': (BuildContext context) => const HomeScreen(),
    '/listView1': (BuildContext context) => const ListView1Screen(),
    '/listView2': (BuildContext context) => const ListView2Screen(),
    '/cardscreen': (BuildContext context) => const CardScreen(),
    '/alertscreen': (BuildContext context) => const AlertScreen(),
  };

  static Route<dynamic>  onGenerateRoute(RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
          );
      }
}
