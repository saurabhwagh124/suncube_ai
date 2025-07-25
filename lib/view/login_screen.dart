import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suncube_ai/utils/AppColors.dart';
import 'package:suncube_ai/widgets/role_drop_down.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final showPassword = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.center,
            radius: 1.2.r,
            colors: [Color(0xFF0F1F17), Color(0xFF0B1B14), Color(0xFF0A1612)],
            stops: [0.2, 0.6, 1.0],
          ),
        ),
        padding: EdgeInsets.all(10.r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: double.infinity),
            Container(
              padding: EdgeInsets.all(10.r),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
                border: Border.fromBorderSide(BorderSide(color: Colors.grey)),
              ),
              child: Column(
                spacing: 10.h,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.themeGreen,
                      borderRadius: BorderRadius.circular(100.r),
                    ),
                    padding: EdgeInsets.all(10.r),
                    child: SvgPicture.asset(
                      'assets/zap-icon.svg',
                      width: 70.w,
                      height: 70.h,
                    ),
                  ),
                  Text(
                    "Suncube AI App",
                    style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Access your AI-powered solar dashboard",
                    style: GoogleFonts.lato(
                      color: Colors.grey,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Email Address",
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  emailTextBox(),
                  SizedBox(height: 10.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Password",
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  passwordTextBox(),
                  SizedBox(height: 10.h),
                  RoleDropdown(),
                  SizedBox(height: 10.h),
                  Container(
                    width: double.infinity,
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: AppColors.themeGreen,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 10.w,
                      children: [
                        Icon(Icons.login, color: Colors.white),
                        Text(
                          "Sign In",
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget emailTextBox() {
    return TextFormField(
      controller: emailController,
      style: TextStyle(fontSize: 16.sp, color: Colors.black),
      decoration: InputDecoration(
        hintText: 'Enter your email',
        hintStyle: TextStyle(color: Colors.grey, fontSize: 14.sp),
        filled: true,
        fillColor: const Color(0xFFFFFFFF),
        // Dark background
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: Color(0XFF34B87C), width: 2),
        ),
      ),
      cursorColor: const Color(0XFF34B87C),
      keyboardType: TextInputType.emailAddress,
    );
  }

  Widget passwordTextBox() {
    return TextFormField(
      controller: passwordController,
      style: TextStyle(fontSize: 16.sp, color: Colors.black),
      obscureText: !showPassword.value,
      obscuringCharacter: "*",
      decoration: InputDecoration(
        suffixIcon: ValueListenableBuilder(
          valueListenable: showPassword,
          builder: (context, value, _) {
            return IconButton(
              icon: Icon((value) ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(() {
                  showPassword.value = !value;
                });
              },
            );
          },
        ),
        hintText: 'Enter your password',
        hintStyle: TextStyle(color: Colors.grey, fontSize: 14.sp),
        filled: true,
        fillColor: const Color(0xFFFFFFFF),
        // Dark background
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: Color(0XFF34B87C), width: 2),
        ),
      ),
      cursorColor: const Color(0XFF34B87C),
      keyboardType: TextInputType.emailAddress,
    );
  }
}
