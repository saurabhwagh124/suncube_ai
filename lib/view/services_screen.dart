import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suncube_ai/utils/AppColors.dart';
import 'package:suncube_ai/widgets/solutions/solution1.dart';
import 'package:suncube_ai/widgets/solutions/solution2.dart';
import 'package:suncube_ai/widgets/solutions/solution3.dart';
import 'package:suncube_ai/widgets/solutions/solution4.dart';
import 'package:suncube_ai/widgets/solutions/solution5.dart';
import 'package:suncube_ai/widgets/solutions/solution6.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, Widget> solutions = {
      'Resident Solar + AI ': Solution1Page(),
      'Commercial & Industrial Solar': Solution2Page(),
      'Smart Grid & Virtual Power Plant': Solution3Page(),
      'AI Monitoring & Predictive Maintenance': Solution4(),
      'Data Insights & Weather Forecasting': Solution5Page(),
      'Cloud Dashboard & Multi-Site Management': Solution6Page(),
    };

    final solutionKeys = solutions.keys.toList();

    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'Explore Solutions',
      //     style: GoogleFonts.inter(
      //       fontSize: 20.sp,
      //       fontWeight: FontWeight.bold,
      //       color: Colors.white,
      //     ),
      //   ),
      //   centerTitle: true,
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      //   flexibleSpace: Container(
      //     decoration: BoxDecoration(
      //       gradient: LinearGradient(
      //         colors: [
      //           const Color(0xFF060C09).withOpacity(0.9),
      //           const Color(0xFF1A231F).withOpacity(0.9),
      //         ],
      //         begin: Alignment.topLeft,
      //         end: Alignment.bottomRight,
      //       ),
      //       boxShadow: [
      //         BoxShadow(
      //           color: Colors.black.withOpacity(0.2),
      //           blurRadius: 8,
      //           offset: const Offset(0, 2),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF060C09), Color(0xFF1A231F)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(12.w),
          child: GridView.builder(
            itemCount: solutionKeys.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1.1,
            ),
            itemBuilder: (context, index) {
              final title = solutionKeys[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => solutions.values.elementAt(index),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(4.w),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.white.withOpacity(0.05),
                        Colors.white.withOpacity(0.1),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(12.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            // overflow: TextOverflow.ellipsis,
                          ),
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
