import 'package:dosse/src/pages/paymentview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
   final MyController c = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
     Get.put(ButtonController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/image2.jpg'),fit: BoxFit.cover)
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text('Americano',style: TextStyle(
              fontSize: 25,fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left:20),
            child: Text('Shot of espresso poured over hot or cold water',style: TextStyle(
              fontSize: 13
            ),),
          ),
           SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Price on selection',style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.bold
            ),),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    // color: Colors.green,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: IconButton(
                    onPressed: () => c.decrement(), 
                    icon: Icon(Icons.remove),)
                ),
                SizedBox(width: 5,),
                Obx(() => Text("${c.book.toString()}",style: TextStyle(fontSize: 20),),),
                SizedBox(width: 5,),
                  Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5)
              ),
              child: IconButton(
                    onPressed: () => c.increment(), 
                    icon: Icon(Icons.add),color: Colors.red,)
            ),
              ],
            ),
      
              ],
            ),
          ),
        
          SizedBox(height: 60,),
          Row(
            children: [
              SizedBox(width: 20,),
              Icon(Icons.messenger_outline),
              SizedBox(width: 20,),
              Text('Any special requests'),
              SizedBox(width: 80,),
              ElevatedButton(
                onPressed: () {
                  
                }, 
                style: ElevatedButton.styleFrom(
                  primary: Colors.white
                ),
                child: Text('Add notes',style: TextStyle(color: Colors.orange),)
                )
            ],
          ),
          SizedBox(height: 50,),
          Container(
            margin: EdgeInsets.only(left: 20,right: 20),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
             
            ),
            child: ElevatedButton(
              onPressed: () {
                
              },
              style: ElevatedButton.styleFrom(primary: Colors.orange,shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
      
              child:  Text('Add to Card'),
              )
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