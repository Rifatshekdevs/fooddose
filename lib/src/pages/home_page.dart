import 'package:carousel_slider/carousel_slider.dart';
import 'package:dosse/src/config/ktext.dart';
import 'package:dosse/src/home_tab/restaurents.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int selectedIndex = 0;
  int _current = 0;

  final urlImages = [
    'assets/carousel/img.jpg',
    'assets/carousel/img.jpg',
    'assets/carousel/img.jpg',
  ];

  @override
  Widget build(BuildContext context) {
        TabController _tabController =TabController(length: 3, vsync: this);

    final Size size = Get.size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(125),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.02,
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.location_on_outlined,
                    color: Color(0xffF5591F),
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                Container(
                    width: size.width * 0.75,
                    child: KText(
                      text: 'Kearaniganj, ramerkanda..',
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    )),
                IconButton(
                  icon: Icon(
                    Icons.person_outline,
                    color: Colors.grey,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Divider(
              color: Colors.grey[450],
              thickness: 0.5,
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  padding: EdgeInsets.only(
                    left: 5,
                  ),
                  height: 50,
                  width: size.width * 0.75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.grey, width: 1.5),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(EvaIcons.search, color: Colors.grey),
                      hintText: "search for dishes,resturants and shop",
                      hintStyle: TextStyle(fontSize: 13),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.tune_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.grey[450],
              thickness: 0.5,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            Divider(
              color: Colors.grey[450],
              thickness: 0.5,
            ),
            Container(
              height: 100,
              child: ListView.separated(
                shrinkWrap: true,
                primary: false,
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                separatorBuilder: (BuildContext context, index) => SizedBox(
                  width: 8,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 100,
                    width: 170,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/carousel/img.jpg'),
                        fit: BoxFit.fill,
                      ),
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Stack(children: [
                      Positioned(
                        left: size.width * 0.18,
                        top: 5,
                        child: Container(
                          height: 30,
                          width: size.width * 0.20,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                              child: KText(
                            text: '30 days 0:8',
                            fontSize: 12,
                          )),
                        ),
                      ),
                      Positioned(
                        top: size.height * 0.06,
                        child: Container(
                            height: 40,
                            width: size.width * 0.15,
                            decoration: BoxDecoration(
                              color: Color(0xffF5591F),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  bottomRight: Radius.circular(50)),
                            ),
                            child: Row(
                              children: [
                                KText(
                                  text: '10',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                                KText(
                                  text: '%\nOFF',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ],
                            )),
                      ),
                    ]),
                  );
                },
              ),
            ),
            Divider(
              color: Colors.grey[450],
              thickness: 0.5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TabBar(
                controller: _tabController,
                  indicatorColor: Color(0xffF5591F),
                  labelColor: Color(0xffF5591F),
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    Tab(
                      child: KText(text: 'Restaurants'),
                    ),
                    Tab(
                      child: KText(text: 'Home Food'),
                    ),
                    Tab(
                      child: KText(text: 'Groceries'),
                    ),
                  ]),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: Get.height,
              child: TabBarView(
                controller: _tabController,
                children: [
                Restaurents(),
                Restaurents(),
                Restaurents(),
              ]),
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
