
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 71,
      decoration: BoxDecoration(
        color: Color(0xFFFFDD99).withOpacity(0.6),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17.0),
        child: Row(
          children: [
            const CircleAvatar(radius: 20, backgroundColor: Colors.lightBlue),
            const SizedBox(width: 16),
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Text('Sifat hassan',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black.withOpacity(0.5),
                ),
                ),
                SizedBox(height: 3),
                Row(
                  children: [
                    //SvgPicture.asset('assets/icons/location.svg'),
                    Image.asset('assets/icons/loc.png'),
                    SizedBox(width: 5),
                    Text('Dhanmondi, Dhaka',
                    style: TextStyle(
                      fontSize: 7,
                      fontWeight: FontWeight.w300,
                    ),
                    ),
                  ],
                ),
              ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 23,
                  height: 20,
                  padding: EdgeInsets.symmetric(horizontal: 3),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFDD99),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Center(
                    child: SvgPicture.asset('assets/icons/msg.svg'),
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  width: 23,
                  height: 20,
                  padding: EdgeInsets.symmetric(horizontal: 3),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFDD99),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Center(child: SvgPicture.asset('assets/icons/heart.svg')),
                ),
                SizedBox(width: 5),
                Container(
                  width: 20,
                  height: 20,
                  padding: EdgeInsets.symmetric(horizontal: 3),
                  decoration: BoxDecoration(
                    color: Color(0xFFFF8484),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: SvgPicture.asset('assets/icons/logout.svg'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
