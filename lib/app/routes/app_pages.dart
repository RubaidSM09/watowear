import 'package:get/get.dart';
import 'package:watowear_chole/app/modules/missions/views/reward_achievements_view.dart';

import '../modules/add_wardrobe/bindings/add_wardrobe_binding.dart';
import '../modules/add_wardrobe/views/add_wardrobe_view.dart';
import '../modules/closet/bindings/closet_binding.dart';
import '../modules/closet/views/closet_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/generate/bindings/generate_binding.dart';
import '../modules/generate/views/generate_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/missions/bindings/missions_binding.dart';
import '../modules/missions/views/missions_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/sign_in/bindings/sign_in_binding.dart';
import '../modules/sign_in/views/sign_in_view.dart';
import '../modules/sign_up/bindings/sign_up_binding.dart';
import '../modules/sign_up/views/sign_up_view.dart';
import '../modules/sign_up/views/verify_mail_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => const SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.VERIFY_MAIL,
      page: () => const VerifyMailView(purpose: '',),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.ADD_WARDROBE,
      page: () => const AddWardrobeView(),
      binding: AddWardrobeBinding(),
    ),
    GetPage(
      name: _Paths.GENERATE,
      page: () => const GenerateView(),
      binding: GenerateBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.CLOSET,
      page: () => const ClosetView(),
      binding: ClosetBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.MISSIONS,
      page: () => const MissionsView(),
      binding: MissionsBinding(),
    ),
  ];
}
