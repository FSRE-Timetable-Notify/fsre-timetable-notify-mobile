import 'package:fsre_notifier/_all.dart';

final _navigatorKey = GlobalKey<NavigatorState>();

final GoRouter goRouter = GoRouter(
  initialLocation: "/home",
  navigatorKey: _navigatorKey,
  routes: [
    GoRoute(
      path: "/home",
      name: "home",
      builder: (context, state) => HomeScreen(),
    ),
  ],
);
