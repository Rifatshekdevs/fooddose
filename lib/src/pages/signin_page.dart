

import 'package:dosse/src/config/ktext.dart';
import 'package:dosse/src/pages/verifiication_page.dart';
import 'package:dosse/src/widget/custom_button.dart';
import 'package:dosse/src/widget/custom_feild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size =Get.size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: size.height*0.10,),
            Center(child: KText(text: 'রেজিস্ট্রেশন করুন',fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold,)),
            SizedBox(height: 5,),
            CustomTextFieldContainer(hintText: 'মার্চেন্ট নামঃ'),
            SizedBox(height: 5,),
            CustomTextFieldContainer(hintText: 'শপ নামঃ'),
            SizedBox(height: 5,),
            CustomTextFieldContainer(hintText: 'লগোঃ'),
            SizedBox(height: 5,),
            CustomTextFieldContainer(hintText: 'ঠিকানাঃ'),
            SizedBox(height: 5,),
            CustomTextFieldContainer(hintText: 'মোবাইল নাম্বারঃ'),
            SizedBox(height: 5,),
            CustomTextFieldContainer(hintText: 'ই-মেইলঃ'),
            SizedBox(height: 5,),
            CustomTextFieldContainer(hintText: 'পাসওয়ার্ডঃ'),
            SizedBox(height: 5,),
            CustomTextFieldContainer(hintText: 'কনফার্ম পাসওয়ার্ডঃ'),
            SizedBox(height: 5,),
            CustomTextFieldContainer(hintText: 'রেফারেন্স (যদি থাকে)'),
            SizedBox(height: 5,),
            CustomButton(buttonText: 'জমা দিন', width: size.width*0.45, onpressed: (){
              Get.to(VerificationPage());
            }, color: HexColor('#660000'),)
      
          ],
        ),
      ),
    );
  }
}