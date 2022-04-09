
import 'package:flutter/material.dart';

import '../Widgets/Card/Home/prefer_card.dart';
class SeeCategory extends StatelessWidget {
  const SeeCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text('All Categories',style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w400
          ),),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(top: 15.0,left: 15),
          child: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back,color: Colors.black,),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 9,vertical: 22),
        child: Column(
          children: [
            Row(
              children: [
                Text('All Categories',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.black
                ),
                ),
                SizedBox(width: 8),
                Image.asset('assets/icons/category.png'),
              ],
            ),
            SizedBox(height: 20),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 50.0,
                mainAxisSpacing: 20.0,
                childAspectRatio: 5/4,
              ),
              itemCount: 24,
              itemBuilder: (context, index) {
                return PreferenceCard();
              },
            ),
          ],
        ),
      ),
    );
  }
}
