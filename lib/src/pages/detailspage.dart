import 'package:dosse/src/model/listmodel.dart';
import 'package:dosse/src/pages/fooddetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class DetailsPage extends StatefulWidget {
  const DetailsPage({ Key? key }) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
     List<ListModel>listview=[
      ListModel(
      
        image: 'assets/burger.png',
        text1: 'Blaze Pizza',
        text2: 'Pizza Amarican, italian',
        text3: 'Very Good',
        text4: '30 Mins',
        text5: 'KD 0.500',
        
      ),
       ListModel(
        image: 'assets/burger.png',
        text1: 'Blaze Pizza',
        text2: 'Pizza Amarican, italian',
        text3: 'Very Good',
        text4: '30 Mins',
        text5: 'KD 0.500',
       
      ),
       ListModel(
        image: 'assets/burger.png',
        text1: 'Blaze Pizza',
        text2: 'Pizza Amarican, italian',
        text3: 'Very Good',
        text4: '30 Mins',
        text5: 'KD 0.500',
        
      ),
       ListModel(
        image: 'assets/burger.png',
        text1: 'Blaze Pizza',
        text2: 'Pizza Amarican, italian',
        text3: 'Very Good',
        text4: '30 Mins',
        text5: 'KD 0.500',
       
      ),
       ListModel(
        image: 'assets/burger.png',
        text1: 'Blaze Pizza',
        text2: 'Pizza Amarican, italian',
        text3: 'Very Good',
        text4: '30 Mins',
        text5: 'KD 0.500',
        
      ),
       ListModel(
        image: 'assets/burger.png',
        text1: 'Blaze Pizza',
        text2: 'Pizza Amarican, italian',
        text3: 'Very Good',
        text4: '30 Mins',
        text5: 'KD 0.500',
        
      ),
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
          children: [SizedBox(height: 40,),
             Center(child: Text('Delevering to')),
          
                   Container(margin: EdgeInsets.only(left: 180),
                     child: Row(
                  children: [
                      Text('Home'),
                      Icon(Icons.arrow_drop_down)
                  ],
                ),
                   ),
              
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Popular restauyrants near you',style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold),
                ),
            ),
             SizedBox(height: 20,),
             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Row(
                 children: [
                   SliderImage(),
                   SliderImage(),
                   SliderImage(),
                   SliderImage(),
                   SliderImage(),
                   SliderImage(),
                 ],
               ),
             ),
             SizedBox(height: 30,),
             Row(
               children: [SizedBox(width:25),
                 Text('All restaurants',style: TextStyle(fontSize: 20),),
                 SizedBox(width:150),
                 Row(
                   children: [
                     GestureDetector(
                       onTap: () {
                         
                       },
                       child: Icon(Icons.tv)),
                        SizedBox(width:10),
                      GestureDetector(
                        onTap: () {
                        },
                        child: Icon(Icons.format_list_bulleted)),
                   ],
                 ),             
      
               ],
             ),
         Container(
           height: 500,
           child: ListView.separated(
             separatorBuilder: (context, index) => SizedBox(height: 5,),
       itemCount: listview.length,
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
              Image.asset('${listview.elementAt(index).image!}',height: 80,width: 80,),
              SizedBox(width: 10,),
              Container(padding: EdgeInsets.only(top:15),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('${listview.elementAt(index).text1!}',
      style: TextStyle(
        fontSize: 15,
      ),),
      SizedBox(height: 10,),
      Text('${listview.elementAt(index).text2!}', style: TextStyle(
        fontSize: 10,color: Color(0xFF660000)
      ),),
      SizedBox(height: 10,),
      Row(
        children: [
            Icon(Icons.sentiment_satisfied_alt,size: 20,),
            SizedBox(width: 5,),
            Text('${listview.elementAt(index).text3!}', style: TextStyle(
              fontSize: 10,color: Color(0xFF660000)
            ),),
        ],
      ),
       SizedBox(height: 10,),
      Row(
        children: [
            Icon(Icons.watch_later_outlined,size: 20,),
            SizedBox(width: 5,),
            Text('${listview.elementAt(index).text4!}', style: TextStyle(
              fontSize: 12,color: Color(0xFF660000)
            ),),
            SizedBox(width: 50,),
             Icon(Icons.delivery_dining_sharp,size: 20,),
            SizedBox(width: 5,),
            Text('${listview.elementAt(index).text5!}', style: TextStyle(
              fontSize: 12,color: Color(0xFF660000)
            ),),
        ],
      )
    ],
    ),
              )
            ],
        ),
      );
       }
       ),
         ),
            
      
                 ]
          ),
          
      )
    );
  }
}



class SliderImage extends StatelessWidget {
  const SliderImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       GestureDetector (
         onTap: (){
           Get.to(FoodDetails());
         },
          child: Container(margin: EdgeInsets.only(left: 20),
              height: 150,
              width: 300,
              decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: AssetImage('assets/burger.png',),fit: BoxFit.fill),
           boxShadow: [
           BoxShadow(
              color: Colors.grey,
              offset: const Offset(
                0.0,
                0.0,
              ),
              blurRadius: 2.0,
              spreadRadius: 0.0,
            ), 
            BoxShadow(
              color: Colors.white,
              offset: const Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ), 
           ]
              ),   
             
            ),
        ),
     SizedBox(height: 10,),
    Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Johnny Rockets'),
              SizedBox(width: 50,),
              Text('Within 27 mins'),
            ],
          ),
           SizedBox(height: 10,),
            Text('Fast Food Burgers, American'),
             SizedBox(height: 10,),
             Row(
    children: [
      Icon(Icons.sentiment_satisfied_alt),
      Text('Amazing'),
       SizedBox(width: 20,),
      Text('Delivery: 0950')
    ],
             )

        ],
      )
      ],
    );
  }
}