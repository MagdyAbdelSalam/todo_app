import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:todo_app/features/Auth/Auht_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> AuhtScreen()));

    });
    super.initState();
  }

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
