

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stake_fair_app/controllers/utils/app_colors.dart';
import 'package:stake_fair_app/view/screens/authentication/sign_up_screen.dart';
import 'package:stake_fair_app/view/widgets/password_validation_screen.dart' show PasswordFieldWidget;

import '../../../controllers/getx_controller/auth_controller.dart';
import '../../../controllers/getx_controller/password_controller.dart';
import '../../widgets/country_code_picker.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthController controller = Get.put(AuthController());
  final PasswordController passwordController = Get.put(PasswordController());
  TextEditingController passwordfieldController = TextEditingController();
 // final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            Text('StakeFair', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          ],
        ),
        backgroundColor: Colors.orange,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios, size: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
          //  key: formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: mediaQuerySize.height * 0.04),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Welcome Back!', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                        Container(
                          height: mediaQuerySize.height * 0.05,
                          width: mediaQuerySize.width * 0.21,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.07),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              _buildIcon(Icons.person, 1),
                              _buildIcon(Icons.mobile_screen_share_rounded, 2),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: mediaQuerySize.height * 0.02),
              
                  Obx(() {
                    if (controller.selectedIcon.value == 1) {
                      CustomField(
  hintText: "Email or Username".tr,
  obscureText: true, // For password fields
  isSuffixIcon: true,
  
  );
      return  CustomField(
  hintText: "Email or Username".tr,
 
  
  );
                      // return CustomField(text: 'Email or Username');
                    } else if (controller.selectedIcon.value == 2) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: CountryCodePickerWidget(),
                      );
                    }
                    return SizedBox();
                  }),
              
                  SizedBox(height: mediaQuerySize.height * 0.01),
              
                  GestureDetector(
                    onTap: passwordController.isChecked.toggle,
                    child: Obx(
                      () => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: Row(
                          children: [
                            Icon(
                              passwordController.isChecked.value ? Icons.check_box : Icons.check_box_outline_blank,
                              size: 30,
                              color: passwordController.isChecked.value ? Colors.green : Colors.grey,
                            ),
                            SizedBox(width: 5),
                            Text('Remember me', style: TextStyle(color: Colors.black, fontSize: 16)),
                          ],
                        ),
                      ),
                    ),
                  ),
              
                  SizedBox(height: mediaQuerySize.height * 0.01),
                  PasswordFieldWidget(controller: passwordfieldController), 
                // Obx(() => CustomField(
                //       text: 'Password',
                //       isSuffixIcon: true,
                //       obscureText: !passwordController.isPasswordVisible.value,
                //       suffixIcon: IconButton(
                //         icon: Icon(
                //           passwordController.isPasswordVisible.value
                //               ? Icons.visibility
                //               : Icons.visibility_off,
                //         ),
                //         onPressed: passwordController.togglePasswordVisibility,
                //       ),
                //       // validator: (value) => value!.isEmpty
                //       //     ? 'Please enter your password'
                //       //     : null,
                //     )),
              
                  SizedBox(height: mediaQuerySize.height * 0.01),
              
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Forgot your',style: TextStyle(fontSize: 16),),
                      SizedBox(width: mediaQuerySize.width * 0.01),
                      Text('username', style: TextStyle(color: Colors.blue,fontSize: 16)),
                      SizedBox(width: mediaQuerySize.width * 0.01),
                      Text('or', style: TextStyle(color: Colors.black,fontSize: 16)),
                      SizedBox(width: mediaQuerySize.width * 0.01),
                      Text('password', style: TextStyle(color: Colors.blue,fontSize: 16)),
                      Text('?', style: TextStyle(color: Colors.black,fontSize: 16)),
                    ],
                  ),
              
                  SizedBox(height: mediaQuerySize.height * 0.03),
              
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: RoundButtonWidget(title: 'Login',width: mediaQuerySize.width * 1,height: mediaQuerySize.height * 0.07,),
                  ),
              
                  SizedBox(height: mediaQuerySize.height * 0.02),
              
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('New to StakeFair?',style: TextStyle(fontSize: 16)),
                      SizedBox(width: mediaQuerySize.width * 0.01),
                      GestureDetector(
                        onTap: () => Get.to(() => SignUpScreen()),
                        child: Text('Sign Up', style: TextStyle(color: Colors.blue,fontSize: 16)),
                      ),
                    ],
                  ),
              
                  SizedBox(height: mediaQuerySize.height * 0.03),
              
                  Row(
                    children: [
                      Expanded(child: Divider()),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text('OR', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500)),
                      ),
                      Expanded(child: Divider())],
                  ),
              
                  SizedBox(height: mediaQuerySize.height * 0.02),
              
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildSocialMediaIcon('assets/images/google.png'),
              
                      _buildSocialMediaIcon('assets/images/fb.png'),
              
                      _buildSocialMediaIcon('assets/images/wa.png'),
              
                      _buildSocialMediaIcon('assets/images/apple.png'),
              
                      ],
                    ),
                  ),
                  SizedBox(height: mediaQuerySize.height * 0.2,),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Container(
                      width: 100,
                      height: 50,
                      child: Image.asset('assets/images/mga.webp',fit: BoxFit.contain,),
                     ),
                     SizedBox(width: mediaQuerySize.width * 0.1),
                      Container(
                      width: 100,
                      height: 50,
                      child: Image.asset('assets/images/commission.png',fit: BoxFit.contain,),
                     )
                    ],
                  )
                ],
              ),
            ),
            
          ),
        ),
      ),
      
    );

  }

  Widget _buildIcon(IconData icon, int value) {
    return Obx(() => GestureDetector(
          onTap: () => controller.selectedIcon.value = value,
          child: Stack(
            alignment: Alignment.center,
            children: [
              if (controller.selectedIcon.value == value)
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(shape: BoxShape.circle, color: AppColors.buttonColor),
                ),
              Icon(icon, color: Colors.black),
            ],
          ),
        ));
  }

Widget _buildSocialMediaIcon(String assetPath) {
  return Container(
    height: 45,
    width: 45,
    child: Image.asset(
      assetPath,
      fit: BoxFit.contain, // Ya BoxFit.cover, jo bhi aapko suit kare
    ),
  );
}

}