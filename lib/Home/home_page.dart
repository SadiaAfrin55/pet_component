
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_components/Home/HomeComponents/search_compo.dart';

import '../Widgets/Card/Home/rescue_card.dart';
import '../Widgets/Card/custom_appbar.dart';
import '../Widgets/TextField/search_field.dart';
import 'HomeComponents/category_sec.dart';
import 'HomeComponents/pet_compo.dart';
import 'HomeComponents/rescue_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final _dotController = PageController();
  final List<String>imgList  = [
    'assets/icons/img_one.jpg',
    'assets/icons/img_one.jpg',
    'assets/icons/img_three.jpg'
  ];

  @override
  Widget build(BuildContext context) {
   return Container(
     color: Color(0xFFFFDD99),
     child: SafeArea(
       child: Scaffold(
         body: Container(
           child: SingleChildScrollView(
             child: Column(
               children: [
                 CustomAppbar(),
                 SearchCompo(),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // page view
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        child: PageView(
                          controller: _dotController,
                          children: [
                            Image.asset('assets/icons/img_one.jpg',),
                            Image.asset('assets/icons/img_two.jpg'),
                            Image.asset('assets/icons/img_three.jpg'),
                            Image.asset('assets/icons/img_one.jpg',),
                            Image.asset('assets/icons/img_two.jpg'),
                            Image.asset('assets/icons/img_three.jpg'),
                          ],
                        ),
                      ),
                      SizedBox(height: 7,),
                      // dot indicators
                      SmoothPageIndicator(
                        controller: _dotController,
                        count: 6,
                        effect: ExpandingDotsEffect(
                          activeDotColor: Colors.orange.shade400,
                          dotColor: Colors.orange.shade200,
                          dotHeight: 15,
                          dotWidth: 15,
                        ),
                      ),
                    ],
                  ),
                ),

                 CategorySection(),
                 SizedBox(height: 23,),
                 PetCompo(),
                 SizedBox(height: 31,),
                 PetCompo(),
                 SizedBox(height: 31,),
                 RescuePage(),
               ],
             ),
           ),
         ),
       ),
     ),
   );
  }
}
