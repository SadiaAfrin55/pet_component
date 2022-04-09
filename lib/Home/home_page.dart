
import 'package:flutter/material.dart';
import 'package:pet_components/Home/HomeComponents/search_compo.dart';

import '../Widgets/Card/Home/rescue_card.dart';
import '../Widgets/Card/custom_appbar.dart';
import '../Widgets/TextField/search_field.dart';
import 'HomeComponents/category_sec.dart';
import 'HomeComponents/pet_compo.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                 CategorySection(),
                 PetCompo(),
                 RescueCard(),
                 
                 IconButton(onPressed: (){
                   Navigator.pushNamed(context, '/settingsPage');
                 },
                     icon: Icon(Icons.settings))
               ],
             ),
           ),
         ),
       ),
     ),
   );
  }
}
