import 'package:flutter/material.dart';

import '../widgets/custom_widgets.dart';

class CustomTextField extends StatelessWidget {
  final String lable;
  final Widget? suffixIcon;
  final int? minLines;
  final int? maxLines;
  const CustomTextField(
      {super.key,
      required this.lable,
      this.suffixIcon,
      this.minLines,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      shadowColor: Colors.black,
      child: TextFormField(
        minLines: minLines,
        maxLines: maxLines,
        decoration: InputDecoration(
          label: Text(
            lable,
            style: const TextStyle(color: Color(0xff707070)),
          ),
          suffixIcon: suffixIcon,
          fillColor: const Color(0xffF6F6F9),
          filled: true,
          isDense: true,
          enabledBorder: border(),
          focusedBorder: border(),
          disabledBorder: border(),
          errorBorder: border(),
          focusedErrorBorder: border(),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }
}
