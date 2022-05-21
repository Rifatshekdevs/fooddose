import 'package:dosse/src/config/ktext.dart';
import 'package:dosse/src/details_tab.dart/All.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsPage extends StatefulWidget {

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> with TickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {
    TabController _tabController =TabController(length: 3, vsync: this);
    final Size size =Get.size;
  return Scaffold(
    backgroundColor: Colors.white,
    body:SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 21,),
          Container(
            height: 220,
            width: double.infinity,
           decoration: BoxDecoration(
             image: DecorationImage(image: AssetImage('assets/kabab.jpg'),fit: BoxFit.fill),
           ),
           child: Stack(
             children: [
               Positioned(
                 top: 15,
                 left: 15,
                 child: Container(
                   height: 40,
                   width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                        ),
                        child: Center(child: IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.west,))),
                 ),
               ),
               Positioned(
                 top: size.height*0.15,
                 left: 15,
                 child: Row(
                 children: [
                   Container(
                     height: 50,
                     width: 50,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(15),
                       image: DecorationImage(image: AssetImage('assets/kabab.jpg'),fit: BoxFit.fill),
                     ),
                   ),
                   SizedBox(width: 5,),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       KText(text: 'PankauriCafe Keraniganj',fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),
                       KText(text: '2.4/5',fontSize: 13,color: Colors.white,),
                       SizedBox(height: 3,),
                       KText(text: 'Kabab',fontSize: 13,color: Colors.white,),
                     ],
                   )
                 ],
               ))
             ],
           ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                KText(text: 'Delivery Time 34 mins',fontSize: 12,),
                KText(text: 'For one TK. 520',fontSize: 12,),
                KText(text: 'Delevery Fee Tk. 35',fontSize: 12,),
              ],
            ),
          ),
          SizedBox(height: 10,),
            Divider(
                  color: Colors.grey[450],
                  thickness: 0.5,
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                   KText(text: 'MENU OF KABAB',fontSize: 16,color: Colors.black38,),
                                       SizedBox(width: size.width*0.37),
    
                   IconButton(onPressed: (){}, icon: Icon(Icons.splitscreen_outlined,color: Colors.grey[400],),),
                   IconButton(onPressed: (){}, icon: Icon(Icons.grid_view_outlined,color: Colors.grey[400],))
                    ],
                  ),
                ),
                 Divider(
                  color: Colors.grey[450],
                  thickness: 0.5,
                ),
          TabBar(
            controller: _tabController,
            indicatorColor: Color(0xffF5591F),
                    labelColor: Color(0xffF5591F),
                    unselectedLabelColor: Colors.black,
            tabs: [
            KText(text: 'All'),
            KText(text: 'boti Kabab'),
            KText(text: 'turkis Kabab'),
          ]
          ),
          

            SizedBox(height:10),
            Container(
              height: Get.height,
              child: TabBarView(
                controller: _tabController,
                children: [
                All(),
                All(),
                All(),
              ]),
            )
        ],
      ),
    ),
  );
  }
}