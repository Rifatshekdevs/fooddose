import 'package:dosse/src/model/listmodel.dart';
import 'package:flutter/material.dart';

class OfferView extends StatefulWidget {
  const OfferView({Key? key}) : super(key: key);

  @override
  State<OfferView> createState() => _OfferViewState();
}

class _OfferViewState extends State<OfferView> {
  @override
  Widget build(BuildContext context) {
    List<ListModel>OfferView=[
      ListModel(      
        image: 'assets/burger.png',
        text1: 'Get 20% off on selected  items',
        text2: 'Valid untill 26 June,2020',
        text3: 'Adora Sweet',      
      ),
         ListModel(      
        image: 'assets/burger.png',
        text1: 'Get 20% off on selected  items',
        text2: 'Valid untill 26 June,2020',
        text3: 'Adora Sweet',      
      ),
       ListModel(      
        image: 'assets/burger.png',
        text1: 'Get 20% off on selected  items',
        text2: 'Valid untill 26 June,2020',
        text3: 'Adora Sweet',      
      ),
       ListModel(      
        image: 'assets/burger.png',
        text1: 'Get 20% off on selected  items',
        text2: 'Valid untill 26 June,2020',
        text3: 'Adora Sweet',      
      ),
       ListModel(      
        image: 'assets/burger.png',
        text1: 'Get 20% off on selected  items',
        text2: 'Valid untill 26 June,2020',
        text3: 'Adora Sweet',      
      ),
       ListModel(      
        image: 'assets/burger.png',
        text1: 'Get 20% off on selected  items',
        text2: 'Valid untill 26 June,2020',
        text3: 'Adora Sweet',      
      ),
       ListModel(      
        image: 'assets/burger.png',
        text1: 'Get 20% off on selected  items',
        text2: 'Valid untill 26 June,2020',
        text3: 'Adora Sweet',      
      ),
       ListModel(      
        image: 'assets/burger.png',
        text1: 'Get 20% off on selected  items',
        text2: 'Valid untill 26 June,2020',
        text3: 'Adora Sweet',      
      ),
       ListModel(      
        image: 'assets/burger.png',
        text1: 'Get 20% off on selected  items',
        text2: 'Valid untill 26 June,2020',
        text3: 'Adora Sweet',      
      ),
       ListModel(      
        image: 'assets/burger.png',
        text1: 'Get 20% off on selected  items',
        text2: 'Valid untill 26 June,2020',
        text3: 'Adora Sweet',      
      ),
      
    ];
   return Scaffold(
     body: SingleChildScrollView(
       child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.only(top: 50),
             child: Text('Offers',style: TextStyle(
               fontSize: 20,fontWeight: FontWeight.bold
             ),),
           ),
           Container(height: 850,
             child: ListView.builder(
               itemCount: OfferView.length,
               itemBuilder: (context,index){
                 return Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                height: 120,
                width: double.infinity,
               
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                   color: Colors.white70,
                  boxShadow: [
               BoxShadow(
                  color: Colors.grey,
                  offset: const Offset(
                    0.0,
                    0.0,
                  ),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ), 
                BoxShadow(
                  color: Colors.white,
                  offset: const Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ), 
              
              ],   
               ),
                child: Row(
                  children: [SizedBox(width: 10,),
                    Image.asset('${OfferView.elementAt(index).image!}',height: 80,width: 80,),
                    SizedBox(width: 10,),
                    Container(padding: EdgeInsets.only(top:15),
         child: Column(crossAxisAlignment: CrossAxisAlignment.start,
         children: [
              Text('${OfferView.elementAt(index).text1!}',
              style: TextStyle(
                fontSize: 15,
              ),),
              SizedBox(height: 10,),
              Text('${OfferView.elementAt(index).text2!}', style: TextStyle(
                fontSize: 12,
              ),),
              SizedBox(height: 10,),
              Text('${OfferView.elementAt(index).text3!}', style: TextStyle(
                    fontSize: 12,
                  ),),
              
         ],
         ),
                    ),
                    
                  ],
                ),
              );
              
               }
               ),
           ),
           
         ],
       ),
     ),


   );
  }
}