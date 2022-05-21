
import 'package:dosse/src/config/ktext.dart';
import 'package:dosse/src/pages/signin_page.dart';
import 'package:dosse/src/widget/custom_button.dart';
import 'package:dosse/src/widget/custom_feild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Size size = Get.size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
    body: Column(
      children: [
        SizedBox(height: size.height*0.10),
        Center(child: Image.asset('assets/logo.png',width: 200,)),
          Center(child: KText(text: 'চলে,সময়ের সাথে সাথে',fontSize: 12,)),
          SizedBox(height: size.height*0.03),
          Center(child: KText(text: 'আপনার একাউন্টে লগইন করুন ',fontSize:22 ,color: Colors.black,fontWeight: FontWeight.bold,)),
          SizedBox(height: 5),
          CustomTextFieldContainer(hintText: 'ই-মেইল দিন', ),
          SizedBox(height: 10),
          
          CustomTextFieldContainer(hintText: 'পাসওয়ার্ড দিন', ),
          SizedBox(height: 10,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 65),
            child: CustomButton(buttonText: 'লগইন করুন', width: size.width*50, onpressed: (){}, color: HexColor('#660000'),),
          ),
         SizedBox(height: 5),
          KText(text: 'পাসওয়ার্ড ভুলে গেছেন?',color: HexColor('#660000'),),
          SizedBox(height:5),
          KText(text: 'এখনও রেজিস্ট্রেশন করেননি?',),
          SizedBox(height: 15),
          GestureDetector (
            onTap: (){
              Get.to(SigninPage());
            },
            child: KText(text: 'রেজিস্ট্রেশন করুন',color: HexColor('#660000'),)),
           SizedBox(height: size.height*0.20,), 
          KText(text: 'Powerd By:',color:HexColor('#660000') ,),
          Image.asset('assets/logo.png',width: 120,),
          Padding(
            padding:  EdgeInsets.only(left: 40),
            child: KText(text: 'Design Your Dreams',fontSize: 7,),
          ),

      ],
    ),
    );
  }
}