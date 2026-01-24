import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/massanger_screen/screens/widgets/home_appbar.dart';

class MassangerScreen extends StatelessWidget {
  const MassangerScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
          child: Column(
            children: [
              HomeAppbar(),
              SizedBox(height: 22.h,),
              TextFormField(
                onTapOutside:(value){
                  FocusScope.of(context).unfocus();
                },
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade300,
                  filled: true,
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.r),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.r),
                    borderSide: BorderSide.none,
                  )
                ),
              ),
              SizedBox(height: 20.h,),
              SizedBox(
                height: 130.h,
                child: ListView.separated(scrollDirection: Axis.horizontal,itemBuilder: (context,index)=>Column(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 40.r,
                          child: ClipOval(
                            child: Image.network(
                              'https://picsum.photos/200',
                              width: 80.w,
                              height: 80.h,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Icon(Icons.person, size: 40.sp);
                              },
                            ),
                          ),
                        ),

                        Positioned(
                          bottom: 0.dg,
                          right: 0.r,
                          child: Container(
                            width: 30.h,
                            height: 30.h,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                border: Border.all(color: Colors.white,width: 5.w),
                                shape: BoxShape.circle
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 7.h,),
                    Text("Mohamed"),
                  ],
                ),
                  itemCount: 10, separatorBuilder: ( context, index)=> SizedBox(width: 20.w,),
                ),
              ),
              Expanded(
                child: ListView.separated(itemBuilder: (context,index){
                  return Row(
                    children: [
                      CircleAvatar(
                        radius: 40.r,

                      ),
                      SizedBox(width: 20.w,),
                      Expanded(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start
                        ,children: [
                        Text("Mohamed"),
                        Text("You,message"),
                      ],)),
                      Container(
                        width: 30.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(width: 15.w,color: Colors.grey.shade400),


                        ),
                      )
                    ],
                  );
                }, separatorBuilder: (context,index)=>SizedBox(height: 20.h,), itemCount: 30 ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
