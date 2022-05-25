import 'package:flutter/material.dart';


class DetailsPage extends StatefulWidget {
  const DetailsPage({ Key? key }) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
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
                          Navigator.pushNamed(context, 'list_image');
                        },
                        child: Icon(Icons.format_list_bulleted)),
                   ],
                 ),             
      
               ],
             ),
              Column(
                children: [
                  List_view(),
                  List_view(),
                  List_view(),
                  List_view(),
                  List_view(),
                  List_view(),
                  List_view(),
                  List_view(),
                  List_view(),
                ],
              )
            
      
                 ]
          ),
      )
    );
  }
}

class List_view extends StatelessWidget {
  const List_view({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            Image.asset('assets/images/image1.jpg',height: 80,width: 80,),
            SizedBox(width: 10,),
            Container(padding: EdgeInsets.only(top:15),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Blaze Pizza',
      style: TextStyle(
        fontSize: 15,fontFamily: 'solaimanlipi'
      ),),
      SizedBox(height: 10,),
      Text('Pizza American, italian', style: TextStyle(
        fontSize: 10,color: Color(0xFF660000)
      ),),
      SizedBox(height: 10,),
      Row(
        children: [
          Icon(Icons.sentiment_satisfied_alt,size: 20,),
          SizedBox(width: 5,),
          Text('Very Good', style: TextStyle(
            fontSize: 10,color: Color(0xFF660000)
          ),),
        ],
      ),
       SizedBox(height: 10,),
      Row(
        children: [
          Icon(Icons.watch_later_outlined,size: 20,),
          SizedBox(width: 5,),
          Text('30 mins', style: TextStyle(
            fontSize: 12,color: Color(0xFF660000)
          ),),
          SizedBox(width: 50,),
           Icon(Icons.delivery_dining_sharp,size: 20,),
          SizedBox(width: 5,),
          Text('KD 0.500', style: TextStyle(
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
}





class SliderImage extends StatelessWidget {
  const SliderImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(margin: EdgeInsets.only(left: 20),
      height: 150,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage('assets/images/image1.jpg',),fit: BoxFit.cover),
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



class Deshboard extends StatelessWidget {
  const Deshboard({
    Key? key,required this.image,required this.title,required this.subtitle,required this.press,
   
  }) : super(key: key);
  final String image;
  final String title;
  final String subtitle;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(left: 30,right: 30),
        height: 100,
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
                      blurRadius: 2.0,
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
            Image.asset(image,height: 80,width: 80,),
            SizedBox(width: 10,),
            Container(padding: EdgeInsets.only(top:15),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                  style: TextStyle(
                    fontSize: 15,fontFamily: 'solaimanlipi'
                  ),),
                  SizedBox(height: 5,),
                  Text(subtitle, style: TextStyle(
                    fontSize: 15,color: Color(0xFF660000)
                  ),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class Catagory extends StatelessWidget {
  
//   const Catagory({
//     Key? key, required this.title,required this.image,required this.press,
//   }) : super(key: key);
//   final String title;
//   final String image;
//  final VoidCallback press;


//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 200,
//       width: 200,
//       decoration: BoxDecoration(
//         color: Colors.orange,
//         borderRadius: BorderRadius.circular(10)
//       ),
//     );
//   }
// }

Widget _selectedExtras({ required String image,required String name,
  final  VoidCallback? press
  }){

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      GestureDetector(
        onTap: press,
        child: Container(margin: EdgeInsets.only(left: 10,right: 10),
          height: 50,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image))
          ),
          
        ),
      ),
      SizedBox(height: 10,),
      Container(
        margin: EdgeInsets.only(left: 25,right: 10),
        child: Text(name, style: TextStyle(fontSize: 12,fontFamily: 'solaimanlipi'),))
    ],
  );
}
