import 'package:go_router/go_router.dart';
import '../../features/auth/login/presentation/view/login_screen.dart';
import '../../features/auth/register/presentation/view/register_screen.dart';
import '../../features/home/presentation/view/home_screen.dart';
import 'app_routes.dart';
class RouterGenerationConfig{
  static GoRouter routerGenerationConfig = GoRouter(
    initialLocation: AppRoutes.loginScreen,
      routes: [
        GoRoute(
            path: AppRoutes.homeScreen,
            name: AppRoutes.homeScreen,
            builder: (context, state) => const HomeScreen(),),
        GoRoute(
            path: AppRoutes.loginScreen,
            name: AppRoutes.loginScreen,
            builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
            path: AppRoutes.registerScreen,
            name: AppRoutes.registerScreen,
            builder: (context, state) => const RegisterScreen(),
        ),
        // GoRoute(
        //     path: AppRoutes.addNoteScreen,
        //     name: AppRoutes.addNoteScreen,
        //     builder: (context, state) => const AddNoteScreen(),
        // ),
      ]
  );
}