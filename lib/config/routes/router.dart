import 'package:flutter/material.dart';
import 'package:shoes/config/routes/routes_path.dart';
import 'package:shoes/ui/features/authentication/screens/register_screen/register_screen.dart';
import 'package:shoes/ui/features/cart/screens/cart_screen.dart';
import 'package:shoes/ui/features/favourite/screens/favourite_screen.dart';
import 'package:shoes/ui/features/home/screens/home_screen.dart';
import 'package:shoes/ui/features/search/screens/search_screen.dart';
import 'package:shoes/ui/features/settings/screens/settings_screen.dart';
import 'package:shoes/ui/intro_screen/screens/on_boarding_screen.dart';
import 'package:shoes/ui/intro_screen/screens/splash_screen.dart';
import 'package:shoes/ui/layout/screens/layout_screen.dart';

import '../../ui/features/authentication/screens/login_screen/login_screen.dart';

Route? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RoutePath.onBoarding:
      return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
    case RoutePath.splash:
      return MaterialPageRoute(builder: (_) => const SplashScreen());
    case RoutePath.login:
      return MaterialPageRoute(builder: (_) => const LoginScreen());
    case RoutePath.register:
      return MaterialPageRoute(builder: (_) => const RegisterScreen());
    case RoutePath.layout:
      return MaterialPageRoute(builder: (_) => const LayoutScreen());
    case RoutePath.home:
      return MaterialPageRoute(builder: (_) => const HomeScreen());
    case RoutePath.favourite:
      return MaterialPageRoute(builder: (_) => const FavouriteScreen());
    case RoutePath.cart:
      return MaterialPageRoute(builder: (_) => const CartScreen());
    case RoutePath.settings:
      return MaterialPageRoute(builder: (_) => const SettingsScreen());
    case RoutePath.search:
      return MaterialPageRoute(builder: (_) => const SearchScreen());
  }
}
