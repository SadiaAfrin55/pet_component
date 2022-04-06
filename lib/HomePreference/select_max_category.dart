
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Widgets/Card/Home/prefer_card.dart';
class SelectMaxCategory extends StatelessWidget {
  const SelectMaxCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Selecte Categories  Maximum 3 Category',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color:  Colors.black.withOpacity(0.6),
              ),
            ),
            const SizedBox(height: 10),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 42.0,
                mainAxisSpacing: 18.0,
                childAspectRatio: 5/4
              ),
              itemCount: 24,
              itemBuilder: (context, index) {
                return PreferenceCard();
              },
            )
          ],
        ),
      ),
    );
  }
}
