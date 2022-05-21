
import 'package:dosse/src/pages/onboarding_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
  {


  @override
  void initState() {
    super.initState();
    _navigatetowelcomePage();
  }
  // late AnimationController controller;
  // late Animation<Alignment> alignmentAnimation;
  // @override
  // void initState() {

  //   super.initState();
  //  controller= AnimationController(vsync: this,duration: Duration(seconds: 5));
  //  final curve = CurvedAnimation(parent: controller, curve: Curves.linear);
  //  final align1 = AlignmentTween(begin: Alignment.topCenter,end: Alignment.bottomCenter);
  //  final align2 = AlignmentTween(begin: Alignment.bottomCenter,end: Alignment.bottomLeft);
  //  final align3 = AlignmentTween(begin: Alignment.bottomLeft,end: Alignment.centerLeft);
  //  final align4 = AlignmentTween(begin: Alignment.centerLeft,end: Alignment.centerRight);

  //  final alignSec = TweenSequence<Alignment>([
  //    TweenSequenceItem<Alignment>(tween:align1,weight: 1.0 ),
  //    TweenSequenceItem<Alignment>(tween:align2,weight: 1.0 ),
  //    TweenSequenceItem<Alignment>(tween:align3,weight: 1.0 ),
  //    TweenSequenceItem<Alignment>(tween:align4,weight: 1.0 ),
  //  ]);

  //  alignmentAnimation = alignSec.animate(curve);
  // }

  // @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }
  

  _navigatetowelcomePage() async {
    await Future.delayed(Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnboardPage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    // final Size size = Get.size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      
          Center(
            child: Image.asset(
              'assets/logo.png',
              width: 250,
            ),
          ),
        
        ],
      ),
    );
  }
  }