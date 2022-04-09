
import 'package:flutter/material.dart';

import '../Widgets/TextField/filled_Normal_field.dart';
class AddressSubmit extends StatefulWidget {
  const AddressSubmit({Key? key}) : super(key: key);

  @override
  _AddressSubmitState createState() => _AddressSubmitState();
}

class _AddressSubmitState extends State<AddressSubmit> {
  TextEditingController emilController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Text('Address',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              color:  Colors.black.withOpacity(0.6),
            ),
          ),
          const SizedBox(height: 8),
          MaterialTextField(
            lable:"",readOnly: false,controller:emilController ,
          ),
          const SizedBox(height: 38),
        ],
      ),
    );
  }
}
