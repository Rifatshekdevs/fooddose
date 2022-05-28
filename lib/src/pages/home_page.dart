import 'package:carousel_slider/carousel_slider.dart';
import 'package:dosse/src/config/ktext.dart';
import 'package:dosse/src/pages/detailspage.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  int _current = 0;

  final urlImages = [
    'assets/carousel/img.jpg',
    'assets/carousel/img.jpg',
    'assets/carousel/img.jpg',
  ];

  @override
  Widget build(BuildContext context) {
  

    final Size size = Get.size;
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          75,
        ),
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.only(left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                KText(text: 'Delivering to'),
                Row(
                  children: [
                    Container(
                      child: KText(
                        text: 'Kearaniganj, ramerkanda..',
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.expand_more_outlined,
                        color: Colors.grey,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
            
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: KText(
                      text: 'Hey there!',
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Container(
                          width: size.width * 0.60,
                          child: KText(
                            text:
                                'Log in or create an account for a faster ordering experience',
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/logo.png',
                        width: 100,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: HexColor('#FE5B00'),
                        ),
                        onPressed: () {},
                        child: KText(
                          text: 'Log In',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: KText(
                text: 'Hey good evening',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            // company advertisement 
            SizedBox(
              width: 450,
              child: CarouselSlider.builder(
                options: CarouselOptions(
                    initialPage: 0,
                    height: 150,
                    viewportFraction: 1,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 20),
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
                itemCount: urlImages.length,
                itemBuilder: (context, index, realIndex) {
                  final urlImage = urlImages[index];
                  return buildImage(urlImage, index);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Container(
                height: 80,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  separatorBuilder: (context, index) => SizedBox(
                    width: 10,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector (
                      onTap: (){
                        Get.to(DetailsPage());
                      },
                      child: Container(
                        height: 80,
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        width: size.width * 0.45,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            KText(
                              text: 'Food',
                              fontSize: 16,
                            ),
                            Image.asset(
                              'assets/burger.png',
                              width: 100,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding:  EdgeInsets.only(left: 15),
              child: Container(
                height: 120,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  separatorBuilder: (context, index) => SizedBox(width: 5,),
                  itemBuilder: (context,index){
                    return Container(
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: Image.asset('assets/burger.png',width: 80,)),
                          ),
                          SizedBox(height: 10,),
                          KText(text: 'Food',fontWeight: FontWeight.bold,color: Colors.black,),

                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          Padding(
            padding:  EdgeInsets.only(left: 15),
            child: KText(text: 'Top Restaurents',color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18,),
          ),
          SizedBox(height: 10,),
        Padding(
padding:  EdgeInsets.only(left: 15,bottom: 20),          child: Container(
            height: 170,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              separatorBuilder: (context,index)=>SizedBox(width: 5,),
              itemBuilder: (context,index){
                return   Container(
                  height: 170,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(child: Image.asset('assets/res.png',width: 70,),),
                      ),
                      SizedBox(height: 10,),
                    KText(text: 'Rising Can,s',fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black,),
                    Row(
                      children: [
                        Icon(Icons.lock_clock,color: Colors.grey,size: 15,),
                        KText(text: '36 mins')
                      ],
                    )
                    ],
                  ),
                );
              }, 
              
              ),
          ),
        )
          ],
        ),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        width: 500,
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
            image: AssetImage(urlImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 110,
            ),
            buildIndicator()
          ],
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: _current,
        count: urlImages.length,
        effect: JumpingDotEffect(
          strokeWidth: 10,
          dotHeight: 5,
          dotWidth: 25,
          activeDotColor: Colors.white,
          dotColor: Colors.grey,
        ),
      );
}
