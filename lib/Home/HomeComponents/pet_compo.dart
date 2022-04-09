
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Widgets/Card/Home/pet_sugges_card.dart';
import '../../Widgets/Card/Home/prefer_card.dart';
class PetCompo extends StatelessWidget {
  const PetCompo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 7),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: Text('Dogs',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 2,
                      color: Colors.black.withOpacity(0.6),
                    ),),
                  ),
                  Image.asset('assets/icons/dog.png'),
                ],
              ),
              InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7.0),
                  child: Text('See All',style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                      color: Colors.black.withOpacity(0.7),
                      letterSpacing: 2
                  ),),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 2.0,
                mainAxisSpacing: 2.0,
                childAspectRatio: 5/3,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, '/details');
                    },
                    child: PetSuggestionCard());
              },
            ),
          ),
        ],
      ),
    );
  }
}
