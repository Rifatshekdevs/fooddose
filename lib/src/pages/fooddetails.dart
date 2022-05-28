import 'package:dosse/src/model/listmodel.dart';
import 'package:dosse/src/pages/paymentview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class FoodDetails extends StatefulWidget {
  const FoodDetails({Key? key}) : super(key: key);

  @override
  State<FoodDetails> createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  @override
  Widget build(BuildContext context) {
     
    
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Container(margin: EdgeInsets.only(left: 10,right: 10),
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/burger.png'),
                  fit: BoxFit.fill
                  ),
                  
                ),
                child: Container(
                  
                  margin: EdgeInsets.only(bottom: 120,left: 10,right: 10),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(icon:Icon(Icons.arrow_back,size: 30,),onPressed: (){
                        Get.back();
                      },),
                  
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(margin: EdgeInsets.only(left: 25,right: 25),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Chicster',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        Text('Fast Food, Fried Chicken, Burgers',style: TextStyle(fontSize: 12),)
                      ],
                    ),
                    Text('Info',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(margin: EdgeInsets.only(left: 25,right: 25),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                       Icon(Icons.sentiment_satisfied_alt,size: 30,),
                       SizedBox(width: 10,),
                        Text('Very Good (2192 ratings)',style: TextStyle(fontSize: 15),),
                      ],
                    ),
                    Text('Reviews',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.red),)
                  ],
                ),
              ),
        
               SizedBox(height: 25,),
              Container(margin: EdgeInsets.only(left: 25,right: 25),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                       Icon(Icons.watch_later_rounded,size: 30,),
                       SizedBox(width: 10,),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('In 26 mins (Delivery fee: KD 0.750)',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                            SizedBox(height: 5,),
                            Text('Delivered with live tracking by FoodDoose',style: TextStyle(fontSize: 10),),
                          ],
                        ),
                      ],
                    ),
                    Icon(Icons.error_outline ,size: 30,)
                  ],
                ),
              ),
               SizedBox(height: 10,),
            
          Container(
            width: double.infinity,
            height: 50,
            child: TabBar(
              unselectedLabelColor: Colors.black54,
              isScrollable: true,
            labelColor: HexColor('#FE5B00'),
            indicatorColor: HexColor('#FE5B00'),
              tabs: [
                Tab(
                  text: "Most Selling",),
              
                 Tab(
                  text: "On FoodDoose"
             
                ),
                 Tab(
                  text: "Pizza"
             
                ),
                 Tab(
                  text: "Drinks"
             
                ),
                 Tab(
                  text: "Snacks"
             
                ),
                 Tab(
                  text: "Pastry"
             
                ),
                
              ],
              
              ),
          ),
            Container(
              height: 800,
              child: TabBarView(children: [
                MostSelling(),
                MostSelling(),
                MostSelling(),
                MostSelling(),
                MostSelling(),
                MostSelling(),
              ]
              ),
            ),
              
        
        
        
            ],
          ),
        ),
      ),
    );
  }
}

class MostSelling extends StatefulWidget {
  const MostSelling({Key? key}) : super(key: key);

  @override
  State<MostSelling> createState() => _MostSellingState();
}

class _MostSellingState extends State<MostSelling> {
  @override
  Widget build(BuildContext context) {
     List<ListModel>listview=[
      ListModel(      
        image: 'assets/burger.png',
        text1: 'Original Pops',
        text2: 'Mouth-watering original chicken\n Sandwich delicious chipotle pops',
        text3: 'KD 2.500',
        ),
         ListModel(      
        image: 'assets/burger.png',
        text1: 'Original Pops',
        text2: 'Mouth-watering original chicken\n Sandwich delicious chipotle pops',
        text3: 'KD 2.500',
        ),
         ListModel(      
        image: 'assets/burger.png',
        text1: 'Original Pops',
        text2: 'Mouth-watering original chicken\n Sandwich delicious chipotle pops',
        text3: 'KD 2.500',
        ),
         ListModel(      
        image: 'assets/burger.png',
        text1: 'Original Pops',
        text2: 'Mouth-watering original chicken\n Sandwich delicious chipotle pops',
        text3: 'KD 2.500',
        ),
         ListModel(      
        image: 'assets/burger.png',
        text1: 'Original Pops',
        text2: 'Mouth-watering original chicken\n Sandwich delicious chipotle pops',
        text3: 'KD 2.500',
        ),
         ListModel(      
        image: 'assets/burger.png',
        text1: 'Original Pops',
        text2: 'Mouth-watering original chicken\n Sandwich delicious chipotle pops',
        text3: 'KD 2.500',
        ),
      
      
    ];
    return Scaffold(
      body: SingleChildScrollView (
        child: Container(
                 height: Get.height,
                 child: ListView.separated(
                   separatorBuilder: (context, index) => SizedBox(height:5),
                   shrinkWrap: true,
                   primary: false,
                   
                   scrollDirection: Axis.vertical,
             itemCount: listview.length,
             itemBuilder: (context,index){
                 return  GestureDetector(
                   onTap: (){
                     Get.to(PaymentPage());
                   },
                   child: Container(
                               margin: EdgeInsets.only(left: 20,right: 20),
                               height: 120,
                               width: double.infinity,
                              
                               decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                     color: Colors.white70,
                             //         
                              ),
                               child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [               
                      Container(
                        padding: EdgeInsets.only(top:15,left: 20),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                             Text('${listview.elementAt(index).text1!}',
                             style: TextStyle(fontSize: 15,),),
                             SizedBox(height: 10,),
                             Text('${listview.elementAt(index).text2!}',
                             style: TextStyle(fontSize: 12,),),
                              SizedBox(height: 10,),
                             Text('${listview.elementAt(index).text3!}', 
                             style: TextStyle(fontSize: 15),),    
                               ],
                               ),    
                               ),
                             Container(margin: EdgeInsets.only(right: 20),
                               child: Image.asset('${listview.elementAt(index).image!}',height: 100,width: 100,)
                               ),
                    ],
                               ),
                             ),
                 );
             }
             ),
               ),
      ),

    );
    
  }
}