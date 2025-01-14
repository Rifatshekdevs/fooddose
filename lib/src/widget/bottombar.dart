

import 'package:dosse/src/pages/account_page.dart';
import 'package:dosse/src/pages/card_details.dart';
import 'package:dosse/src/pages/home_page.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Bottombar extends StatefulWidget {

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int _currentIndex =0;
  final List<Widget> screen=[
    HomePage(),
    CardDetails(),
    AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body:screen[_currentIndex],
  bottomNavigationBar: BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: HexColor('#FF5A00'),
    unselectedItemColor: Colors.grey,
    currentIndex: _currentIndex,
    items: [
    BottomNavigationBarItem(icon:Icon(EvaIcons.homeOutline),label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart),label: 'Cart'),
    BottomNavigationBarItem(icon: Icon(EvaIcons.personOutline),label: 'Account'),
  ],
  onTap: (index){
    setState(() {
      _currentIndex=index;
    });
  },
  ),
  
    );
  }
}
























// import 'package:dosse/src/config/ktext.dart';
// import 'package:dosse/src/pages/favorite_page.dart';
// import 'package:dosse/src/pages/offer_page.dart';

// import 'package:dosse/src/pages/home_page.dart';
// import 'package:eva_icons_flutter/eva_icons_flutter.dart';
// import 'package:flutter/material.dart';

// class Bottombar extends StatefulWidget {

//   @override
//   State<Bottombar> createState() => _BottombarState();
// }

// class _BottombarState extends State<Bottombar> {
//   int currentTab =0;
//   final List<Widget> screen=[
//     HomePage(),
//     OfferPage(),
//     FavoritePage(),
//     HomePage(),
//   ];
//   final PageStorageBucket bucket = PageStorageBucket();
//   Widget curentScreen = HomePage();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageStorage(
//         bucket: bucket, 
//         child: curentScreen,
//         ),
//         floatingActionButton: FloatingActionButton(
//           backgroundColor:Color(0xffF5591F) ,
//           onPressed: (){
//           },
//           child: Icon(Icons.add),
//           ),
//           floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//           bottomNavigationBar: BottomAppBar(
          
//           shape: CircularNotchedRectangle(),
//           notchMargin: 5,
//           child: Container(
//             color: Colors.transparent,
//             height: 50,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                MaterialButton(
//                  minWidth: 40,
//                  onPressed: (){
//                    setState(() {
//                      curentScreen=HomePage();
//                      currentTab=0;
//                    });
//                  },
//                  child: Column(
//                    children: [
//                      SizedBox(height: 3,),
//                      Icon(EvaIcons.homeOutline,color: currentTab==0?Color(0xffF5591F):Colors.black,),
//                      KText(text: 'Home',color:  currentTab==0?Color(0xffF5591F):Colors.black,),
//                    ],
//                  ),
//                  ),
//                MaterialButton(
//                  minWidth: 40,
//                  onPressed: (){
//                    setState(() {
//                      curentScreen=OfferPage();
//                      currentTab=1;
//                    });
//                  },
//                  child: Column(
//                    children: [
//                       SizedBox(height: 3,),
//                      Icon(EvaIcons.percentOutline,color: currentTab==1?Color(0xffF5591F):Colors.black,),
//                      KText(text: 'Offers',color:  currentTab==1?Color(0xffF5591F):Colors.black,),
//                    ],
//                  ),
//                  ),
//                 ],
//               ),
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                MaterialButton(
//                  minWidth: 40,
//                  onPressed: (){
//                    setState(() {
//                      curentScreen=FavoritePage();
//                      currentTab=2;
//                    });
//                  },
//                  child: Column(
//                    children: [
//                       SizedBox(height: 3,),
//                      Icon(EvaIcons.heartOutline,color: currentTab==2?Color(0xffF5591F):Colors.black,),
//                      KText(text: 'Favourites',color:  currentTab==2?Color(0xffF5591F):Colors.black,),
//                    ],
//                  ),
//                  ),
//                MaterialButton(
//                  minWidth: 40,
//                  onPressed: (){
//                    setState(() {
//                      curentScreen=HomePage();
//                      currentTab=3;
//                    });
//                  },
//                  child: Column(
//                    children: [
//                       SizedBox(height: 3,),
//                      Icon(EvaIcons.shoppingBagOutline,color: currentTab==3?Color(0xffF5591F):Colors.black,),
//                      KText(text: 'Cart',color:  currentTab==3?Color(0xffF5591F):Colors.black,),
//                    ],
//                  ),
//                  ),
//                 ],
//               ),
//               ],
//             ),

//           ),
//           ),
//     );
//   }
// }