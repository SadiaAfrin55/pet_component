
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet_components/Widgets/Card/Home/prefer_card.dart';
class SelectCategory extends StatelessWidget {
  const SelectCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Selected Categories',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color:  Colors.black.withOpacity(0.6),
          ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Row(
                children: [
                  PreferenceCard(
                    title: 'Dog',
                    cardImg: SvgPicture.asset('assets/icons/dog.svg'),
                  ),
                  SizedBox(width: 16),
                  PreferenceCard(
                    title: 'Cat',
                    cardImg: SvgPicture.asset(''),
                  ),
                  SizedBox(width: 16),
                  PreferenceCard(
                    title: 'Bird',
                    cardImg: SvgPicture.asset(''),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 15),
            child: SvgPicture.asset('assets/icons/line.svg', color:Color(0xFFC4C4C4),),
          ),
        ],
      ),
    );
  }
}
