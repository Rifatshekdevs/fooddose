
import 'package:dosse/src/config/ktext.dart';
import 'package:dosse/src/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class VerificationPage extends StatelessWidget {
 


  @override
  Widget build(BuildContext context) {
    final Size size =Get.size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          SizedBox(height: size.height*0.10,),
          Center(child: KText(text: 'নাম্বার ভেরিফিকেশন',color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16,)),
                 SizedBox(height: size.height*0.05,),
           Image.asset('assets/logo.png',width: 170,),
          KText(text: 'চলে,সময়ের সাথে সাথে',fontSize: 12,),
           SizedBox(height: size.height*0.05,),
          KText(text: 'আপনাকে পাঠানো ভেরিফিকেশন\n         কোডটি এন্টার করুন',fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold,),
           SizedBox(height: 2,),
          KText(text: '(নাম্বার পরিবর্তন করুন)',fontSize: 12,color: Colors.black54,),
           SizedBox(height: size.height*0.02,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight:  Radius.circular(5),bottomLeft:  Radius.circular(50),bottomRight:  Radius.circular(50)),
            ),
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 7),
                  child: Row(
                    children: [
                  _textFeildOTP(first: true,last: false,context: context),
                  _textFeildOTP(first: true,last: false,context: context),
                  _textFeildOTP(first: true,last: false,context: context),
                  _textFeildOTP(first: true,last: false,context: context),
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 9),
                  child: CustomButton(buttonText: 'NEXT', width: 370, onpressed: (){}, color: HexColor('#660000')),
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          KText(text: 'আবার কোড পাঠান',color:HexColor('#CA86D7') ,fontSize: 18,),
        ],
      ),
    );
  }
  _textFeildOTP({required bool first, last,required BuildContext context}){
    return Container(
      height: 90,
      child: AspectRatio(
        aspectRatio:1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value){
            if(value.length==1 && last==false){
FocusScope.of(context).nextFocus();
            }
            if(value.length==1&& first ==false){
            FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black54,width: 1.5),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: HexColor('#CA86D7'),width: 1.5),
              borderRadius: BorderRadius.circular(10),
          ),
        ),
        
        ),
      ),
    );
  }
}