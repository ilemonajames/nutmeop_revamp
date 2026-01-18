import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/auth/presentation/pages/role_select_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/vehicle/presentation/pages/vehicle_profile_page.dart';
import 'route_names.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: RouteNames.login,
    routes: [
      GoRoute(
        path: RouteNames.login,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: RouteNames.roleSelect,
        builder: (context, state) => const RoleSelectPage(),
      ),
      GoRoute(
        path: RouteNames.home,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: RouteNames.vehicleProfile,
        builder: (context, state) => const VehicleProfilePage(),
      ),
    ],
  );
});
