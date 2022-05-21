import 'package:dosse/src/config/ktext.dart';
import 'package:dosse/src/widget/bottombar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocationPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Size size = Get.size;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: size.height*0.10,),
          Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                          boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ), 
                          ],
                      ),
                      child: TextField(
                        
                        decoration: InputDecoration(
                          suffixIcon: Icon(EvaIcons.search,color:Color(0xffF5591F),),
                          hintText: "Enter Your Location",
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    
                    SizedBox(height: size.height*0.70,),
        SizedBox(
          height: 50,
          width: size.width*0.90,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xffF5591F),
            ),
            onPressed: (){
              Get.offAll(Bottombar());
            }, 
            child: KText(text: 'Save',color: Colors.white,fontSize:16,fontWeight: FontWeight.bold,
            ),
            ),
            ),
        ],
      ),
    );
  }
}