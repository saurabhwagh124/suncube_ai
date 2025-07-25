import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

class RoleDropdown extends StatefulWidget {
  const RoleDropdown({super.key});

  @override
  State<RoleDropdown> createState() => _RoleDropdownState();
}

class _RoleDropdownState extends State<RoleDropdown> {
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
    return DropdownButtonFormField<RoleOption>(
      dropdownColor: const Color(0xFFFFFFFF),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFFFFFFF),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: Color(0xFF73E0A9), width: 2),
        ),
      ),
      iconEnabledColor: Colors.grey,
      value: selectedRole,
      onChanged: (value) {
        setState(() {
          selectedRole = value;
        });
      },
      hint: Text(
        "Select Role",
        style: TextStyle(color: Colors.grey, fontSize: 14.sp),
      ),
      style: TextStyle(color: Colors.white, fontSize: 14.sp),
      items:
          roles.map((role) {
            return DropdownMenuItem<RoleOption>(
              value: role,
              child: Row(
                children: [
                  Icon(role.icon, color: Color(0xFF73E0A9), size: 20.sp),
                  SizedBox(width: 10.w),
                  Row(
                    spacing: 5.w,
                    children: [
                      Text(
                        role.title,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        role.description,
                        style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }).toList(),
    );
  }
}
