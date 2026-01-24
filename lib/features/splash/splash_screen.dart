import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Lottie.asset("assets/images/splash_image.json"),
            Text("Taskati",style: TextStyle(
              fontSize: 25.sp,
              fontWeight: FontWeight.bold,
            ),),
            Text("it's time get organized",style: TextStyle(
              fontSize: 18.sp,
            ),)
          ],
        ),
      ),
    );
  }
}
