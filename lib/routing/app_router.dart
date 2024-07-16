import 'package:go_router/go_router.dart';
import 'package:riverpod/riverpod.dart';

import '../features/recipes/presentation/screens/prayer.dart';
import 'not_found_screen.dart';

enum AppRoute {
  prayers,
}

final GoRoterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: "/",
    debugLogDiagnostics: true,
    errorBuilder: (context, state) => const NotFoundScreen(),
    routes: [
      GoRoute(
        path: '/',
        name: AppRoute.prayers.name,
        builder: (context, state) => const PrayerScreen(),
      ),
    ],
  );
});
