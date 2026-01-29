import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/core/app_constants.dart';
import 'package:todo_app/core/widgets/custom_app_button.dart';
import 'package:image_picker/image_picker.dart';
import 'package:todo_app/features/Auth/models/user_model.dart';



class AuhtScreen extends StatefulWidget {
  const AuhtScreen({super.key,});

  @override
  State<AuhtScreen> createState() => _AuhtScreenState();
}

class _AuhtScreenState extends State<AuhtScreen> {

  final user=Hive.box<UserModel>(AppConstants.userBox).getAt(0);

  final ImagePicker picker = ImagePicker();
  XFile? image;
  TextEditingController nameController=TextEditingController();

  void openCamera()async{
   image= await picker.pickImage(source: ImageSource.camera);
   setState(() {

   });
  }
  void openGallery()async{
    image= await picker.pickImage(source: ImageSource.gallery);
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(left:  16.0.w,right: 16.0.w,),
          child: Column(
            spacing: 15.h,
            children: [
              Visibility(
                visible: image==null,
                  child: CircleAvatar(
                    radius: 100.r,
                    child: Icon(Icons.person,size: 100.r,),
                  ),
                replacement: Container(
                  width: 200.w,
                  height: 200.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                        image: Image.file(File(image?.path??'')).image,
                    )
                  ),
                )

              ),
              CustomAppButton(title: 'Upload From Camera', onPressed: (){
                openCamera();
              },),
              CustomAppButton(title: 'Upload From Gallery', onPressed: () {
                openGallery();
              },),
              Divider(
                color: Colors.indigo,
              ),
              TextFormField(
                controller: nameController,
                onTapOutside: (v){
                  FocusScope.of(context).unfocus();
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder:  OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.indigo,
                    )
                  )
                ),
              ),
              CustomAppButton(title: 'Login',
                  onPressed: (){
                print("User data: ${user?.image}");
                Hive.box<UserModel>(AppConstants.userBox).add(UserModel(image: image?.path??'',
                    name: nameController.text)).then((v){
                    print("Success");
                }).catchError((e){
                  print("error$e");
                });
                  }
              ),


            ],
          ),
        ),
      ),
    );
  }
}
