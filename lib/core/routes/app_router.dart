import 'package:dalel/features/auth/presentation/views/signin_view.dart';
import 'package:dalel/features/auth/presentation/views/signup_view.dart';
import 'package:dalel/features/onBoarding/presentation/views/on_boarding_view.dart';
import 'package:dalel/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: "/", builder: (context, state) => SplashView()),
    GoRoute(path: "/onBoarding", builder: (context, state) => OnBoardingView()),
    GoRoute(path: "/signup", builder: (context, state) => SignupView()),
    GoRoute(path: "/signin", builder: (context, state) => SigninView()),
  ],
);
