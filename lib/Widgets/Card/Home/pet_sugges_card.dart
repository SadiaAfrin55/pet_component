
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class PetSuggestionCard extends StatefulWidget {
  const PetSuggestionCard({Key? key}) : super(key: key);

  @override
  State<PetSuggestionCard> createState() => _PetSuggestionCardState();
}

class _PetSuggestionCardState extends State<PetSuggestionCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width/2,
          height: 106,
          decoration: BoxDecoration(
            color: Color(0xffA2FECF),
            borderRadius: BorderRadius.circular(7),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 7.0,horizontal: 9.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Kitty Sadia",
                      style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        print('clicked');
                      },
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: Color(0xffFFDD99),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: const Padding(
                          padding:  EdgeInsets.all(2.0),
                          child: Center(
                            child: Icon(
                              Icons.favorite,
                              color: Color(0xFFDB827E),
                              size: 6,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 65,
                      color: Color.fromARGB(255, 226, 113, 20),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 6,
                              height: 6,
                              color: Color.fromARGB(255, 226, 113, 20),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Dhaka, Dhanmondi",
                              style: TextStyle(
                                fontSize: 8,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Orgin: Asian",
                          style: TextStyle(
                            fontSize: 8,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              "Male",
                              style: TextStyle(
                                fontSize: 8,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            SvgPicture.asset(
                              "assets/icon/line.svg",
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Age: 5",
                              style: TextStyle(
                                fontSize: 8,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 50,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Color(0xffFFDD99),
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Center(
                              child: Text(
                                "Adopt Box",
                                style: TextStyle(
                                  fontSize: 8,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
