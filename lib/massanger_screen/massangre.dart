import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/massanger_screen/screens/massanger_screen.dart';

class Massangre extends StatelessWidget {
  const Massangre({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(619, 917),
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MassangerScreen() ,
      ),
    );
  }
}
