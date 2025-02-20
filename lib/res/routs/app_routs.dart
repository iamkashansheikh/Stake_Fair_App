import 'package:get/get.dart';
import 'package:stake_fair_app/res/routs/app_routs_name.dart';
import 'package:stake_fair_app/view/screens/authentication/forgot_password_screen.dart';
import 'package:stake_fair_app/view/screens/authentication/login_screen.dart';
import 'package:stake_fair_app/view/screens/authentication/sign_up_screen.dart';
import 'package:stake_fair_app/view/screens/home_screen.dart';

class AppRouts {
  static final List<GetPage> pages = [
    GetPage(name: RoutsName.login, page: () => const LoginScreen()),
    GetPage(name: RoutsName.signup, page: () =>  SignupScreen()),
    GetPage(name: RoutsName.forgotpass, page: () =>  ForgotPasswordScreen()),
    GetPage(name: RoutsName.homeScreen, page: () =>  HomeScreen())
  ];
  
}