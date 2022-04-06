
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class PreferenceCard extends StatelessWidget {
  final String? title;
  final SvgPicture? cardImg;
  const PreferenceCard({this.title,this.cardImg,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color:  Color(0xFFA2FECF),
            //border: Border.all(color:Color(0xFFDADADA))
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3.0),
                child: Center(child: cardImg),
              ),
              Text('$title',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
