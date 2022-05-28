

import 'package:dosse/src/config/ktext.dart';
import 'package:dosse/src/pages/setting_page.dart';
import 'package:dosse/src/widget/custom_leading.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
         preferredSize: Size.fromHeight(120),
        child: Container(
          height: 120,
          decoration: BoxDecoration(
          ),
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical:40,horizontal: 20),
            child: Row(
              children: [
               
                Container(
                
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black,width: 1.5)
                  ),
                  child: Icon(Icons.person),
                ),
                SizedBox(width: 15,),

               Column(
                 children: [
                   SizedBox(height: 15,),
                   KText(text: 'Hi John',color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,),
                 ],
               ),
               Spacer(),
               IconButton(onPressed: (){
              Get.to(SettingPage());
               }, icon: Icon(EvaIcons.settings,),),
              ],
            ),
          ),
        )
        ),
        body: Column(
        children: [
        customLeading(icon: Icon(Icons.list_alt_outlined,color: Colors.black,), text: 'Your orders'),
        customLeading(icon: Icon(Icons.local_offer_outlined,color: Colors.black,), text: 'Offers'),
        customLeading(icon: Icon(Icons.notifications,color: Colors.black,), text: 'Notifications'),
        customLeading(icon: Icon(Icons.favorite_border_outlined,color: Colors.black,), text: 'Favorite'),
        customLeading(icon: Icon(Icons.favorite_border_outlined,color: Colors.black,), text: 'Chat Box'),
        customLeading(icon: Icon(Icons.info_outline,color: Colors.black,), text: 'About'),
        ],
        ),
    );
  }
}