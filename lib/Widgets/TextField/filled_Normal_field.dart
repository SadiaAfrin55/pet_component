
import 'package:flutter/material.dart';

class MaterialTextField extends StatelessWidget {
  final String lable;
  final bool readOnly;
  MaterialTextField({required this.lable,required this.controller,required this.readOnly});
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please fillup';
          }
          return null;
        },
        readOnly: readOnly,
        controller: controller,
        decoration: InputDecoration(
          labelText: lable,
          labelStyle: TextStyle(color:Colors.black54),
          filled: true,
          fillColor: const Color(0xFFFFDD99).withOpacity(0.4),
          contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0),
          border: InputBorder.none,
          // enabledBorder: OutlineInputBorder(
          //   borderSide:
          //   BorderSide(color:Color(0xFF94A3B8), width: 1.0),
          //   borderRadius: BorderRadius.all(Radius.circular(10.0)),
          // ),
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
