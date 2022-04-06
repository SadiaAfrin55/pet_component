
import 'package:flutter/material.dart';
class SearchTextField extends StatelessWidget {
  final bool readOnly;
  SearchTextField({required this.readOnly});
  TextEditingController controller = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please fillup';
        }
        return null;
      },
      readOnly: readOnly,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search_sharp),
        filled: true,
        fillColor: const Color(0xFFFFDD99).withOpacity(0.4),
        contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 18.0),
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
      ),
    );
  }
}
