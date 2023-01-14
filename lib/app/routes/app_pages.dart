import 'package:get/get.dart';

import 'package:tokopedia/app/modules/LoginScreen/bindings/login_screen_binding.dart';
import 'package:tokopedia/app/modules/LoginScreen/views/login_screen_view.dart';
import 'package:tokopedia/app/modules/home/bindings/home_binding.dart';
import 'package:tokopedia/app/modules/home/views/home_view.dart';
import 'package:tokopedia/app/modules/registerScreen/bindings/register_screen_binding.dart';
import 'package:tokopedia/app/modules/registerScreen/views/register_screen_view.dart';
import 'package:tokopedia/app/modules/splashScreen/bindings/splash_screen_binding.dart';
import 'package:tokopedia/app/modules/splashScreen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_SCREEN,
      page: () => LoginScreenView(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER_SCREEN,
      page: () => RegisterScreenView(),
      binding: RegisterScreenBinding(),
    ),
  ];
}
