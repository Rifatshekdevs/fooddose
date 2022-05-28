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
          SizedBox(height: 15,),
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/burger.png'),fit: BoxFit.fill)
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
          SizedBox(height: 30,),
         
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Your Choice Of size'),
                SizedBox(height: 10,),
                Text('Choose 1')
              ],
            ),
          ),
        SizedBox(
          height: 200,
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OrderTypeButton(value: 'Small', title: 'Small', amount: 10, isFree: true),
                      OrderTypeButton(value: 'Medium', title: 'Medium', amount: 10, isFree: false),
                      OrderTypeButton(value: 'Large', title: 'Large', amount: 10, isFree: true),
      
                    ],
                  ),
          ),
        ),
          SizedBox(height: 20,),
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

class OrderTypeButton extends StatelessWidget {

  final String value;
  final String title;
  final double amount;
  final bool isFree;

  OrderTypeButton({
    required this.value,
    required this.title,
    required this.amount,
    required this.isFree
  });
  @override
  Widget build(BuildContext context) {
   
    return GetBuilder<ButtonController>(
      builder: (buttoncontroller) {
        return InkWell(
          onTap: () => buttoncontroller.setOrderType(value),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,style: TextStyle(fontSize: 15),),
              SizedBox(width: 20,),
              Row(
                children: [
                  Text('(+KD 1350)'),
                  Radio(
                    value: value, 
                    groupValue: buttoncontroller.orderType, 
                    onChanged: (String? value){
 
                    },
                    activeColor: Colors.green,
                    ),
                ],
              ),
              
            ],
          ),
        );
      },
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


class ButtonController extends GetxController{

  String _orderType = 'Size';
  String get orderType=> _orderType;
  void setOrderType(String type) {
    _orderType = type;
    update();
  }
}