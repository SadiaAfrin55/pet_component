
import 'package:flutter/material.dart';

import '../../Widgets/Card/Home/rescue_card.dart';
class RescuePage extends StatelessWidget {
  const RescuePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('Rescue pet Post',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 2,
                      color: Colors.black.withOpacity(0.6),
                    ),),
                    Image.asset('assets/icons/rescue.png'),
                  ],
                ),
                InkWell(
                  onTap: (){},
                  child: Text('See All',style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                      color: Colors.black.withOpacity(0.7),
                      letterSpacing: 2
                  ),),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 14),
        // RescueCard()
        SizedBox(
          width: MediaQuery.of(context).size.width,
          //height: MediaQuery.of(context).size.height*0.8,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context,i){
                return Column(
                  children: [
                    RescueCard(
                        cardImg:Image.asset('assets/icons/cat.png'),
                        category:'Cat',
                        petName:'Mew Rock',
                        origin:'Deshi bride',
                        gender:'Male',
                        age:'8 month',
                        details:'The loss of any loved one, regardless of whether they are a human or\n'
                            'animal, is painful. Death and the emotions it brings are never easy to deal\nwith'
                    ),
                  ],
                );
              }
          ),
        ),
      ],
    );
  }
}
