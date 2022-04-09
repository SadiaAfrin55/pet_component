
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class HistoryCard extends StatelessWidget {
  final String? title;
  final Color? color;
  final SvgPicture? image;

  HistoryCard({
    this.title,
    this.color,
    this.image,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
          color: Colors.white
      ),
      padding: EdgeInsets.symmetric(vertical: 4,horizontal: 16),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  flex: 9,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: CircleAvatar(
                            backgroundColor: color,
                            radius: 22,
                            child: Center(child: image)
                        ),
                      ),
                      SizedBox(width: 16,),
                      Expanded(
                        flex: 8,
                        child: Text('$title',style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),),
                      ),
                    ],
                  )
              ),
              Expanded(
                  flex: 1,
                  child: SvgPicture.asset('assets/icons/back_arrow.svg')
              )
            ],
          ),
          const Divider(
            indent: 40,
            thickness: 1.0,
          )
        ],
      ),
    );
  }
}
