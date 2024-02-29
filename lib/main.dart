import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled4/assets/constants/images.dart';
import 'package:untitled4/features/main/presentation/views/main_view.dart';

import 'assets/colors/colors.dart';
import 'features/main/presentation/controllers/bloc/main_bloc.dart';
/// Ahmadjon Safarov Usauma Company

void main() {
  runApp(const MyApp());
}
/// Ahmadjon Safarov Usauma Company

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  /// Ahmadjon Safarov Usauma Company

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393,852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_,child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => MainBloc()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home:AnimatedSplashScreen(
              backgroundColor: white,
              nextScreen: MainView(),
              splash: Image.asset(AppImages.logo),
              splashTransition: SplashTransition.scaleTransition,
            ),
          ),
        );
      },
    );
  }
}

/// Ahmadjon Safarov Usauma Company
