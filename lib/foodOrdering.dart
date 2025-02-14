// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_app/core/localization/generated/l10n.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routers.dart';
import 'core/theming/colors.dart';

class FoodOrdering extends StatelessWidget {
  const FoodOrdering({super.key, required this.appRouter});
  final AppRouter appRouter;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context

      child: MaterialApp(
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        onGenerateRoute: appRouter.generateroutes,
        initialRoute: Routes.homescreen,
        debugShowCheckedModeBanner: false,
        title: 'Food Ordering',
        // You can use the library anywhere in the app even in theme
        theme: ThemeData(
          primaryColor: ColorsManager.mainblue,
          scaffoldBackgroundColor: Colors.white,
        ),
      ),
    );
  }
}
 