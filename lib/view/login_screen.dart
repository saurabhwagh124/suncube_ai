import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suncube_ai/utils/AppColors.dart';
import 'package:suncube_ai/view/Dashboards/admin_dashboard.dart';
import 'package:suncube_ai/view/Dashboards/grid_operator_dashboard.dart';
import 'package:suncube_ai/view/Dashboards/user_dashboard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class RoleOption {
  final String title;
  final String description;
  final IconData icon;

  RoleOption({
    required this.title,
    required this.description,
    required this.icon,
  });
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final showPassword = ValueNotifier<bool>(false);

  RoleOption? selectedRole;

  final List<RoleOption> roles = [
    RoleOption(
      title: "Admin",
      description: " - Full access",
      icon: Icons.shield,
    ),
    RoleOption(
      title: "User",
      description: " - Personal dashboard",
      icon: Icons.person,
    ),
    RoleOption(
      title: "Grid Operator",
      description: " - System view",
      icon: Icons.settings,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.center,
            radius: 1.2.r,
            colors: const [
              Color(0xFF0F1F17),
              Color(0xFF0B1B14),
              Color(0xFF0A1612),
            ],
            stops: [0.2, 0.6, 1.0],
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.r),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
              child: Container(
                width: 360.w,
                padding: EdgeInsets.all(24.r),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.12),
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.18),
                    width: 1.w,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 12,
                      offset: const Offset(0, 6),
                    ),
                  ],
                  gradient: LinearGradient(
                    colors: [
                      Colors.white.withOpacity(0.07),
                      Colors.white.withOpacity(0.05),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.85,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 40.r,
                          backgroundColor: AppColors.themeGreen,
                          child: SvgPicture.asset(
                            'assets/zap-icon.svg',
                            width: 50.w,
                            height: 50.h,
                          ),
                        ),
                        SizedBox(height: 12.h),
                        Text(
                          "Suncube AI App",
                          style: GoogleFonts.lato(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          "Access your AI-powered solar dashboard",
                          style: GoogleFonts.lato(
                            fontSize: 16.sp,
                            color: Colors.white70,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20.h),

                        /// Email Label
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Email Address",
                            style: GoogleFonts.lato(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 6.h),
                        emailTextBox(),

                        SizedBox(height: 16.h),

                        /// Password Label
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Password",
                            style: GoogleFonts.lato(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 6.h),
                        passwordTextBox(),

                        SizedBox(height: 16.h),

                        /// Role Dropdown inline implementation
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Select Role",
                            style: GoogleFonts.lato(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 6.h),
                        SizedBox(
                          width: double.infinity,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.12),
                              borderRadius: BorderRadius.circular(12.r),
                              border: Border.all(
                                color: const Color(0xFF73E0A9),
                                width: 1.w,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 12.w),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<RoleOption>(
                                dropdownColor: Colors.black.withOpacity(0.85),
                                iconEnabledColor: const Color(0xFF73E0A9),
                                value: selectedRole,
                                hint: Text(
                                  "Select Role",
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 14.sp,
                                  ),
                                ),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                ),
                                isExpanded: true,
                                onChanged: (RoleOption? newValue) {
                                  setState(() {
                                    selectedRole = newValue;
                                  });
                                },
                                items:
                                    roles.map((RoleOption role) {
                                      return DropdownMenuItem<RoleOption>(
                                        value: role,
                                        child: Row(
                                          children: [
                                            Icon(
                                              role.icon,
                                              color: const Color(0xFF73E0A9),
                                              size: 20.sp,
                                            ),
                                            SizedBox(width: 10.w),
                                            Flexible(
                                              child: RichText(
                                                overflow: TextOverflow.ellipsis,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: role.title,
                                                      style: TextStyle(
                                                        fontSize: 14.sp,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: role.description,
                                                      style: TextStyle(
                                                        fontSize: 12.sp,
                                                        color: Colors.white70,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }).toList(),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 24.h),

                        /// Sign in button
                        SizedBox(
                          width: double.infinity,
                          height: 48.h,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              if (selectedRole != null) {
                                if (selectedRole!.title.toLowerCase() ==
                                    "admin") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder:
                                          (context) => AdminDashboardHome(),
                                    ),
                                  );
                                } else if (selectedRole!.title.toLowerCase() ==
                                    "user") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => UserDashboardHome(),
                                    ),
                                  );
                                } else {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder:
                                          (context) =>
                                              GridOperatorDashboardHome(),
                                    ),
                                  );
                                }
                              }
                            },
                            icon: const Icon(Icons.login, color: Colors.white),
                            label: Text(
                              "Sign In",
                              style: GoogleFonts.lato(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.themeGreen,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget emailTextBox() {
    return TextFormField(
      controller: emailController,
      style: TextStyle(fontSize: 16.sp, color: Colors.white),
      decoration: InputDecoration(
        hintText: 'Enter your email',
        hintStyle: TextStyle(color: Colors.white54, fontSize: 14.sp),
        filled: true,
        fillColor: Colors.white.withOpacity(0.12),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: Colors.white24),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: AppColors.themeGreen, width: 2),
        ),
      ),
      cursorColor: AppColors.themeGreen,
      keyboardType: TextInputType.emailAddress,
    );
  }

  Widget passwordTextBox() {
    return ValueListenableBuilder<bool>(
      valueListenable: showPassword,
      builder: (context, value, _) {
        return TextFormField(
          controller: passwordController,
          obscureText: !value,
          obscuringCharacter: "*",
          style: TextStyle(fontSize: 16.sp, color: Colors.white),
          decoration: InputDecoration(
            hintText: 'Enter your password',
            hintStyle: TextStyle(color: Colors.white54, fontSize: 14.sp),
            filled: true,
            fillColor: Colors.white.withOpacity(0.12),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 14.h,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                value ? Icons.visibility : Icons.visibility_off,
                color: Colors.white70,
              ),
              onPressed: () {
                showPassword.value = !value;
              },
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: Colors.white24),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: AppColors.themeGreen, width: 2),
            ),
          ),
          cursorColor: AppColors.themeGreen,
        );
      },
    );
  }
}
