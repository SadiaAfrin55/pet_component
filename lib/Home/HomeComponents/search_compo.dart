
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Widgets/TextField/search_field.dart';
class SearchCompo extends StatelessWidget {
  const SearchCompo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: MediaQuery.of(context).size.width*0.82,
              height: 37,
              child: SearchTextField(readOnly: false,)),
          Container(
            //width: 34,
              width: MediaQuery.of(context).size.width*0.12,
              padding: EdgeInsets.only(top: 10),
              child: Image.asset('assets/icons/search.png',)),
        ],
      ),
    );
  }
}
