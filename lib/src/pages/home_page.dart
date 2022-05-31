import 'package:carousel_slider/carousel_slider.dart';
import 'package:dosse/src/config/ktext.dart';
import 'package:dosse/src/pages/detailspage.dart';
import 'package:dosse/src/pages/location_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
      backgroundColor: Colors.grey[200],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          75,
        ),
        child: Container(
          color: Colors.grey[200],
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
               GestureDetector (
                 onTap: (){
                   Get.to(LocationPage());
                 },
                  child: Row(
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
                      SizedBox(width: size.width*0.27,),
                      IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 30,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
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
              decoration: BoxDecoration(),
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
            CarouselSlider.builder(
              options: CarouselOptions(
                  enlargeCenterPage: true,
                  autoPlayCurve: Curves.ease,
                  initialPage: 0,
                  height: 150,
                  autoPlay: true,
                  autoPlayInterval: Duration(milliseconds: 5000),
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
            Center(child: buildIndicator()),
            SizedBox(
              height: 10,
            ),
            categoryText('Category', 'See all'),

            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Container(
                height: 120,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  separatorBuilder: (context, index) => SizedBox(
                    width: 5,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(DetailsPage());
                      },
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                  child: Image.asset(
                                'assets/burger.png',
                                width: 80,
                              )),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            KText(
                              text: 'Food',
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            // popular
            categoryText('popular Food', 'See all'),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 230,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(width: 5),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                      margin: EdgeInsets.only(left: 15),
                      height: 230,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.1),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Stack(children: [
                        Container(
                          height: 130,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            image: DecorationImage(
                                image: AssetImage('assets/kabab.jpg'),
                                fit: BoxFit.fill),
                          ),
                        ),
                        Positioned(
                          top: size.height * 0.08,
                          child: Container(
                            height: 40,
                            width: 70,
                            decoration: BoxDecoration(
                                color: HexColor('#4CAD51'),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(40),
                                    bottomRight: Radius.circular(40))),
                            child: Center(
                                child: KText(
                              text: '10% OFF',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                          ),
                        ),
                        Positioned(
                          top: size.height * 0.18,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                KText(
                                  text: 'Kacchi Bhai',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                KText(
                                  text: 'House 0, Road 0, Test city',
                                  fontSize: 12,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RatingBar.builder(
                                      wrapAlignment: WrapAlignment.start,
                                      updateOnDrag: true,
                                      itemSize: 20,
                                      minRating: 1,
                                      initialRating: 0,
                                      direction: Axis.horizontal,
                                      itemCount: 5,
                                      itemPadding:
                                          EdgeInsets.symmetric(horizontal: 2.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    KText(text: '(2)')
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]));
                },
              ),
            ),
            SizedBox(
              height: 5,
            ),
            categoryText('Campaigns', 'View All'),
            SizedBox(
              height: 8,
            ),
          Padding(
            padding:  EdgeInsets.only(left: 15,right: 10),
            child: Container(
              height: 220,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                 separatorBuilder: (context,index)=> SizedBox(width: 5,), 
                 itemCount: 5,
                 itemBuilder: (context,index){
                   return   Container(
                  height: 220,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: 130,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          image: DecorationImage(
                              image: AssetImage('assets/kabab.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Positioned(
                        top: size.height * 0.03,
                        child: Container(
                          height: 40,
                          width: 70,
                          decoration: BoxDecoration(
                              color: HexColor('#4CAD51'),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40),
                                  bottomRight: Radius.circular(40))),
                          child: Center(
                              child: KText(
                            text: '10% OFF',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                        ),
                      ),
                      Positioned(
                          top: size.height * 0.17,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                KText(
                                  text: 'Cheese Burger',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                KText(
                                  text: 'Sultan Dine',
                                  fontSize: 12,
                                  color: Colors.black54,
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: [
                                    KText(
                                      text: '\$100.0',
                                      fontWeight: FontWeight.bold,
                                    ),
                                    SizedBox(
                                      width: size.width * 0.20,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.red,
                                    ),
                                    KText(text: '3.0', color: Colors.red)
                                  ],
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                );
                 },
                 ),
            ),
          ),
        SizedBox(height: 10,),
         popularText('Polular Restaurent'),
            SizedBox(
              height: 10,
            ),
         Container(
           height: 300,
           child: ListView.separated(
             separatorBuilder: (context,index)=>SizedBox(height: 5,), 
             itemCount: 5,
             itemBuilder: (context,index){
               return  Container(
              margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                    Container(
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            image: DecorationImage(
                                image: AssetImage('assets/kabab.jpg'),
                                fit: BoxFit.fill),
                          ),
                        ),
                        Positioned(
                          top: size.height * 0.03,
                          child: Container(
                            height: 40,
                            width: 70,
                            decoration: BoxDecoration(
                                color: HexColor('#4CAD51'),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(40),
                                    bottomRight: Radius.circular(40))),
                            child: Center(
                                child: KText(
                              text: '10% OFF',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                          ),
                        ),
                        Positioned(
                          top: size.height*0.27,
                          child: Column(
                          children: [
                            Row(
                              children: [
                               Container(
                                 height: 60,
                                 width: 60,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(10),
                                   image: DecorationImage(image: AssetImage('assets/kabab.jpg'),fit: BoxFit.fill),
                                 ),
                               ),
                               Padding(
                                 padding:  EdgeInsets.symmetric(horizontal: 10),
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children:[
                                     KText(text: 'Dhanmondi Biriyani Uttara',                                  fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,),
                                     Row(
                                       children: [
                                         KText(text: 'Bengali'),
                                         SizedBox(width: size.width*0.50,),
                                          Icon(
                                          Icons.star,
                                          color: Colors.red,
                                        ),
                                        KText(text: '3.0', color: Colors.red),
                                     
                                      ],
                                      ),
                                      SizedBox(height: 3,),
                                       Row(
                                      children: [
                                        KText(text: 'tk. 100'),
                                        SizedBox(width: size.width*0.07,),
                                        KText(text: '20 min'),
                                        SizedBox(width: size.width*0.07,),
                                        KText(text: 'Tk. 10'),
                                       ],
                                     ),
                                   ]
                                 ),
                               ),
                              ],
                            ),
                          ],
                        ))
                ],
              ),
            );
            
             },
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
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: _current,
        count: urlImages.length,
        effect: JumpingDotEffect(
          strokeWidth: 20,
          dotHeight: 10,
          dotWidth: 10,
          activeDotColor: Colors.red,
          dotColor: Colors.grey,
        ),
      );

  categoryText(String text, String text1) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          KText(
            text: text,
            color: Colors.black,
            fontSize: 16,
          ),
          KText(
            text: text1,
            color: HexColor('#FE5B00'),
            fontSize: 16,
          ),
        ],
      ),
    );
  }
  popularText(String text,) {
    final Size size =Get.size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        
        children: [
          KText(
            text: text,
            color: Colors.black,
            fontSize: 16,
          ),
          SizedBox(width:size.width*0.44 ,),
          Icon(Icons.filter_list,),
          SizedBox(width: 3,),
          Icon(Icons.grid_view,)
        ],
      ),
    );
  }
}
