import 'package:get/get.dart';

import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/dashboard_drawer/bindings/dashboard_drawer_binding.dart';
import '../modules/dashboard_drawer/views/dashboard_drawer_view.dart';
import '../modules/forget_password/bindings/forget_password_binding.dart';
import '../modules/forget_password/views/forget_password_view.dart';
import '../modules/forget_password_otp/bindings/forget_password_otp_binding.dart';
import '../modules/forget_password_otp/views/forget_password_otp_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/my_courses/bindings/my_courses_binding.dart';
import '../modules/my_courses/views/my_courses_view.dart';
import '../modules/on_boarding/bindings/on_boarding_binding.dart';
import '../modules/on_boarding/views/on_boarding_view.dart';
import '../modules/reset_password/bindings/reset_password_binding.dart';
import '../modules/reset_password/views/reset_password_view.dart';
import '../modules/setting/bindings/setting_binding.dart';
import '../modules/setting/views/setting_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.FORGET_PASSWORD,
      page: () => const ForgetPasswordView(),
      binding: ForgetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.FORGET_PASSWORD_OTP,
      page: () => const ForgetPasswordOtpView(),
      binding: ForgetPasswordOtpBinding(),
    ),
    GetPage(
      name: _Paths.RESET_PASSWORD,
      page: () => const ResetPasswordView(),
      binding: ResetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD_DRAWER,
      page: () => const DashboardDrawerView(),
      binding: DashboardDrawerBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MY_COURSES,
      page: () => const MyCoursesView(),
      binding: MyCoursesBinding(),
    ),
    GetPage(
      name: _Paths.SETTING,
      page: () => const SettingView(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: _Paths.ON_BOARDING,
      page: () => const OnBoardingView(),
      binding: OnBoardingBinding(),
    ),
  ];
}
