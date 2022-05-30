import 'package:dosse/src/model/listmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardDetails extends StatefulWidget {
  const CardDetails({Key? key}) : super(key: key);

  @override
  State<CardDetails> createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  final MyController c = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    List<ListModel>OfferView=[
      ListModel(      
        image: 'assets/images/image1.jpg',
        text1: 'cart product name',
        text2: '254',
        text3: 'addons: Add on',      
        text4: 'variation: varient',      
      ),
        ListModel(      
        image: 'assets/images/image1.jpg',
        text1: 'cart product name',
        text2: '254',
        text3: 'addons: Add on',      
        text4: 'variation: varient',      
      ),
       ListModel(      
        image: 'assets/images/image1.jpg',
        text1: 'cart product name',
        text2: '254',
        text3: 'addons: Add on',      
        text4: 'variation: varient',      
      ),
       ListModel(      
        image: 'assets/images/image1.jpg',
        text1: 'cart product name',
        text2: '254',
        text3: 'addons: Add on',      
        text4: 'variation: varient',      
      ),
       ListModel(      
        image: 'assets/images/image1.jpg',
        text1: 'cart product name',
        text2: '254',
        text3: 'addons: Add on',      
        text4: 'variation: varient',      
       )
    ];
   return Scaffold(
     body: SingleChildScrollView(
       child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.only(top: 50),
             child: Text('My Cart',style: TextStyle(
               fontSize: 20,fontWeight: FontWeight.bold
             ),),
           ),
           Container(height: 650,
           width: double.infinity,
             child: Expanded(
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
                    children: [SizedBox(width: 5,),
                      Image.asset('${OfferView.elementAt(index).image!}',height: 80,width: 80,fit: BoxFit.cover,),
                      SizedBox(width: 10,),
                      Container(padding: EdgeInsets.only(top:10),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                Text('${OfferView.elementAt(index).text1!}',
                style: TextStyle(
                  fontSize: 12,
                ),),
               
                Row(
                  children: [
                    Icon(Icons.star,size: 15,),
                    Icon(Icons.star,size: 15,),
                    Icon(Icons.star,size: 15,),
                    Icon(Icons.star,size: 15,),
                    Icon(Icons.star,size: 15,),
                  ],
                ),
                SizedBox(height: 5,),
                Text('${OfferView.elementAt(index).text2!}', style: TextStyle(
                  fontSize: 12,
                ),),
                SizedBox(height: 5,),
                Text('${OfferView.elementAt(index).text3!}', style: TextStyle(
                      fontSize: 12,
                    ),),
                     SizedBox(height: 5,),
                Text('${OfferView.elementAt(index).text4!}', style: TextStyle(
                      fontSize: 12,
                    ),),
                
                      ],
                      ),
                      ),
                      SizedBox(width: 80,),
                       Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    // color: Colors.green,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: IconButton(
                    onPressed: () => c.decrement(), 
                    icon: Icon(Icons.remove,size: 20,),)
                ),
                // SizedBox(width: 10,),
                Obx(() => Text("${c.book.toString()}",style: TextStyle(fontSize: 15),),),
                // SizedBox(width: 10,),
                  Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5)
              ),
              child: IconButton(
                    onPressed: () => c.increment(), 
                    icon: Icon(Icons.add,size: 20,),)
            ),
                      
                    ],
                  ),
                );
                
                 }
                 ),
             ),
           ),
            SizedBox(height: 10,),

           Padding(
             padding: const EdgeInsets.only(left: 20,right: 20),
             child: Column(
               children: [
                 Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Item Price"),
                     Text("100.0"),
                   ],
                 ),
                 SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Address"),
                     Text("10.0"),
                   ],
                 ),
                  SizedBox(height: 10,),
                  Container(
                    height: 2,
                    width: double.infinity,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 20,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Subtotal"),
                     Text("100.0"),
                   ],
                 )
               ],
             ),
           ),
            SizedBox(height: 10,),

            Container(
              padding: EdgeInsets.only(left: 20,right: 20),
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed:() {
                  
                }, 
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                 shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))
                  
              ),
                child: Text('Proceed to Checkout',style: TextStyle(color:Colors.white,))),
            )
           
         ],
       ),
     ),


   );
  }
}
class MyController extends GetxController{
  var book = 0.obs;
  increment(){
    book.value++;
  }
   decrement(){
   if(book.value<=0){
    Get.snackbar("buying Product", "Cannot be less than zero");
   }else{
       book.value--;
   }
  }
}