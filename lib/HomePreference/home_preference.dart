
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pet_components/HomePreference/select_category.dart';
import 'package:pet_components/HomePreference/select_max_category.dart';

import '../Widgets/Button/HomeBtn/custom_btn.dart';
import '../Widgets/Card/Home/prefer_card.dart';
import 'address_submit.dart';
class HomePreference extends StatefulWidget {

  HomePreference({Key? key}) : super(key: key);

  @override
  _HomePreferenceState createState() => _HomePreferenceState();
}

class _HomePreferenceState extends State<HomePreference> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                     margin: EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/feather.svg'),
                          const SizedBox(width: 10),
                          const Text('Setup\nYour preference ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700
                          ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 7,),
                    SelectCategory(),
                    SelectMaxCategory(),
                    AddressSubmit(),
                    CustomBtn(),
                    SizedBox(height: 35),
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
