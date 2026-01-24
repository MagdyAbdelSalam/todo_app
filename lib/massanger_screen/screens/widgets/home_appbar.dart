import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30.r,
          child: Icon(Icons.menu,color: Colors.black,),
        ),
        SizedBox(width: 12.w,),
        Expanded(
          child: Text("Chats",style: TextStyle(
            fontSize: 40.sp,
            fontWeight: FontWeight.bold,

          ),),
        ),
        CircleAvatar(
          foregroundColor:
          Colors.blue,

          radius: 30.r,
          backgroundColor: Colors.grey.shade300,
          child: Icon(Icons.camera_alt,color: Colors.black,),
        ),
        SizedBox(width: 23,),
        CircleAvatar(
          radius: 30.r,
          backgroundColor: Colors.grey.shade300,
          child: Icon(Icons.edit,color: Colors.black,),

        ),
      ],
    )
    ;
  }
}
