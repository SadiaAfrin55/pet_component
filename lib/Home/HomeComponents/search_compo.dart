
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Widgets/TextField/search_field.dart';
class SearchCompo extends StatelessWidget {
  const SearchCompo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12,horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 6,
              child: Container(
                  height: 37,
                  child: SearchTextField(readOnly: false,))),
          Container(
            color: Colors.lime,
            width: 34,
            height: 34,
              child: SvgPicture.asset('assets/icons/search.svg')),
        ],
      ),
    );
  }
}
