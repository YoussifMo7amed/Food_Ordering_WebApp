import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_app/core/routing/app_router.dart';
import 'package:web_app/foodOrdering.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp( FoodOrdering(appRouter: AppRouter(),));
}

