import 'package:go_router/go_router.dart';
import 'package:planka_app/features/work_feature/views/screens/work_screen.dart';

class AppRoutes{
  static final routes = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const WorkScreen(),
      ),
    ],
  );
}