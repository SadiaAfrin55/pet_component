
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class ImageSlider extends StatelessWidget {
  final _dotController = PageController();
  ImageSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: PageView(
              controller: _dotController,
              children: [
                Image.asset('assets/icons/img_one.jpg'),
                Image.asset('assets/icons/img_two.jpg'),
                Image.asset('assets/icons/img_three.jpg'),
              ],
            ),
          ),
          SmoothIndicator(
            count: 3,
            offset: 4,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.orange.shade400,
              dotColor: Colors.orange.shade200,
              dotHeight: 15,
              dotWidth: 15,
            ),
          ),
        ],
      ),
    );
  }
}
