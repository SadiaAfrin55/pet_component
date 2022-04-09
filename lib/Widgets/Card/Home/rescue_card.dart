
import 'package:flutter/material.dart';
class RescueCard extends StatelessWidget {
  const RescueCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
      decoration: BoxDecoration(
        color: Color(0xFFA2FECF).withOpacity(0.2),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Row(
        children: [
          Container(
            width: 61,
            height: 58,
            decoration: BoxDecoration(
              color: Color(0xFFFECFA3).withOpacity(0.9),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Center(
              child:Image.asset('assets/icons/cat.png',height: 32,),
            ),
          ),
          SizedBox(width: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.65,
                    child: Row(
                      children: [
                        Text('Cat',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black.withOpacity(0.6),
                        ),),
                        Container(
                            margin: EdgeInsets.only(left: 4,right: 4),
                            width:1,height: 16,color: Colors.black.withOpacity(0.2)),
                        Text('Mew Rock',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black.withOpacity(0.6),
                        ),),
                      ],
                    ),
                  ),
                  //SizedBox(width: 116),
                  Container(
                    width: 29,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color:Color(0xFFFFDD99),
                    ),
                    child: Center(
                      child: Text('Urgent',
                      style: TextStyle(
                        fontSize: 6,
                        fontWeight: FontWeight.w700,
                      ),),
                    ),
                  ),
                ],
              ),
              RichText(
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: 'Origin: ', style: TextStyle(fontWeight: FontWeight.w700,fontSize: 6,color: Colors.black)),
                    TextSpan(text: 'Deshi bride',style: TextStyle(fontSize: 6,fontWeight: FontWeight.w300,color: Colors.black)),
                  ],
                ),
              ),
              SizedBox(height: 1),
              Row(
                children: [
                  Text('Male',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 6,color: Colors.black)),
                  Container(
                      margin: EdgeInsets.only(left: 2,right: 2),
                      width:1,height: 8,color: Colors.black.withOpacity(0.2)),
                  RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Age: ', style: TextStyle(fontWeight: FontWeight.w700,fontSize: 6,color: Colors.black)),
                        TextSpan(text: '8 month',style: TextStyle(fontSize: 6,fontWeight: FontWeight.w300,color: Colors.black)),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2),
              Container(
                width: MediaQuery.of(context).size.width*0.5,
                child: RichText(
                  text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: 'The loss of any loved one, regardless of whether they are a human or animal, is painful. Death and the emotions it brings are never easy to deal with. ', style: TextStyle(fontWeight: FontWeight.w300,fontSize: 6,color: Colors.black)),
                      TextSpan(text: 'More...',style: TextStyle(fontSize: 6,fontWeight: FontWeight.w700,color: Colors.black)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
