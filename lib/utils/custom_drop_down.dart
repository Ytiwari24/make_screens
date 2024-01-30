import 'package:flutter/material.dart';

import '../widgets/custom_widgets.dart';

class CustomDropDown extends StatefulWidget {

  final List<String> items;
  final String initialValue;
  final ValueChanged<String> onChanged;

  const CustomDropDown({
    super.key,
  
    required this.items,
    required this.initialValue,
    required this.onChanged,
  });

  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String? selectedItem;

  @override
  void initState() {
    super.initState();
    selectedItem = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      shadowColor: Colors.black,
      child: DropdownButtonFormField<String>(
        value: selectedItem,
        decoration: InputDecoration(
          // hintText: widget.hintText,
          // hintStyle: const TextStyle(color: Color(0xff707070)),
          // label: Text(
          //  widget. lable,
          //   style: const TextStyle(color: Color(0xff707070)),
          // ),
          // suffixIcon: suffixIcon,
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
        icon: const Icon(Icons.arrow_drop_down),
        iconSize: 24,
        elevation: 16,
        style: const TextStyle(color: Colors.black),
        onChanged: (String? newValue) {
          setState(() {
            selectedItem = newValue!;
            widget.onChanged(newValue); // Notify parent about the change
          });
        },
        items: widget.items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
