
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Widgets/Card/Home/prefer_card.dart';
class CategorySection extends StatelessWidget {
  const CategorySection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 7,vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: Text('Categories',style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 2,
                  color: Colors.black.withOpacity(0.6),
                ),),
              ),
              Image.asset('assets/icons/category.png',width: 15,),
            ],
          ),
          const SizedBox(height: 14),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 45.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 6/5,
            ),
            itemCount: 8,
            itemBuilder: (context, index) {
              return PreferenceCard();
            },
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, '/seeCategory');
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('See More',style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                      color: Colors.black.withOpacity(0.7),
                      letterSpacing: 2
                    ),),
                    Icon(Icons.keyboard_arrow_down_rounded,color: Colors.black.withOpacity(0.3),),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
