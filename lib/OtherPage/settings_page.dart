
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Widgets/Card/Settings/language_card.dart';
import '../Widgets/Card/Settings/setting_card.dart';
class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Settings',style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.black
        ),),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,color: Colors.black,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            LanguageCard(
              image: SvgPicture.asset('assets/icons/global.svg',height: 16),
              title: 'Language',
              color: Color(0xFF1DA1F2),
            ),
            InkWell(
              onTap: () {

              },
              child: HistoryCard(
                image: SvgPicture.asset('assets/icons/profile.svg',height: 16),
                title: 'Profile Edit',
                color: Color(0xFFFFC24D),
              ),
            ),
            InkWell(
              onTap: () {
              },
              child: HistoryCard(
                image: SvgPicture.asset('assets/icons/faq.svg',height: 16),
                title: 'F&Q',
                color: Color(0xFF83FFED),
              ),
            ),
            InkWell(
              onTap: () {
              },
              child: HistoryCard(
                image: SvgPicture.asset('assets/icons/help.svg',height: 16),
                title: 'Help & Support ',
                color: Color(0xFF1DA1F2),
              ),
            ),
            InkWell(
              onTap: () {
              },
              child: HistoryCard(
                image: SvgPicture.asset('assets/icons/chngpass.svg',height: 16),
                title: 'Change Password',
                color: Color(0xFFFFC24D),
              ),
            ),
            InkWell(
              onTap: () {
              },
              child: HistoryCard(
                image: SvgPicture.asset('assets/icons/logout.svg',height: 16,),
                title: 'Log Out',
                color: Color(0xFFFA4169),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
