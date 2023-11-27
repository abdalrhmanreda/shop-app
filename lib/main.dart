import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:shoes/config/routes/routes_path.dart';
import 'package:shoes/core/cache/hive_cache.dart';
import 'package:shoes/ui/cubit/app_cubit.dart';
import 'package:shoes/ui/cubit/observer/blocObserver.dart';
import 'package:shoes/ui/features/authentication/controller/auth_cubit.dart';
import 'package:shoes/ui/features/authentication/screens/login_screen/login_screen.dart';
import 'package:shoes/ui/intro_screen/screens/on_boarding_screen.dart';

import 'config/routes/router.dart';
import 'config/themes/themes.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await Hive.initFlutter();
  await HiveCache.openHive();
  bool onBoarding = HiveCache.getData(key: 'onBoarding');
  Widget widget;
  onBoarding ? widget = const LoginScreen() : widget = const OnBoardingScreen();

  runApp(SneakerApp(
    startWidget: widget,
  ));
}

class SneakerApp extends StatelessWidget {
  const SneakerApp({super.key, required this.startWidget});
  final Widget startWidget;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => AppCubit()..getAllProducts()),
            BlocProvider(create: (context) => AuthCubit()),
          ],
          child: SafeArea(
            child: MaterialApp(
              home: startWidget,
              initialRoute: RoutePath.layout,
              onGenerateRoute: generateRoute,
              locale: const Locale('en', 'US'),
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              debugShowCheckedModeBanner: false,
              theme: Style.lightTheme,
              darkTheme: Style.darkTheme,
              themeMode: ThemeMode.light,
            ),
          ),
        );
      },
    );
  }
}
