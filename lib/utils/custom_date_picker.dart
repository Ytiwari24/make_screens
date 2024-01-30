import 'package:flutter/material.dart';

class CustomDatePicker extends StatefulWidget {
  final String label;
  final DateTime initialDate;
  final Function(DateTime) onDateSelected;

  const CustomDatePicker({
    Key? key,
    required this.label,
    required this.initialDate,
    required this.onDateSelected,
  }) : super(key: key);

  @override
  _CustomDatePickerState createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  late DateTime selectedDate;

  @override
  void initState() {
    super.initState();
    selectedDate = widget.initialDate;
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        widget.onDateSelected(selectedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      shadowColor: Colors.black,
      child: GestureDetector(
        onTap: () => _selectDate(context),
        child: AbsorbPointer(
          child: TextFormField(
            decoration: InputDecoration(
              label: Text(
                widget.label,
                style: const TextStyle(color: Color(0xff707070)),
              ),
              suffixIcon: Icon(Icons.calendar_today),
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
            readOnly: true,
            controller: TextEditingController(
              text: "${selectedDate.toLocal()}".split(' ')[0],
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.circular(14),
    );
  }
}
