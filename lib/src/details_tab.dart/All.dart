import 'package:dosse/src/config/ktext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class All extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
             Container(
           height: Get.height,
            child: ListView.separated(
              shrinkWrap: true,
              primary: false,
              itemCount: 50,
              separatorBuilder: (context ,index)=>  
          Divider(
                color: Colors.grey[450],
                thickness: 0.5,
              ),
            
              itemBuilder: (context, index){
                return Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    KText(text: 'Tikha kabab'),
                    KText(text: 'TK. 50'),
                
                  ],
                ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color(0xffF5591F),width: 1.5),
                      
                    ),
                    child: Center(child: Icon(Icons.add,color:Color(0xffF5591F),size: 15,))),
                  
              ],
            ),
          );
              }, 
              
              ),
          ),
        
        ],
      ),
    );
  }
}