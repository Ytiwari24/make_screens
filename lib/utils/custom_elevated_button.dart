import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomElevatedButton extends StatelessWidget {
  final String label;
  const CustomElevatedButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(strokeAlign: 1.0, color: const Color(0xff707070)),
          color: const Color(0xff0047FF),
          borderRadius: BorderRadius.circular(14),
          boxShadow: const [
            BoxShadow(
                color: Color(0xff707070),
                blurRadius: 3,
                spreadRadius: .1,
                offset: Offset(0, 4))
          ]),
      child: Text(
        label,
        style: GoogleFonts.montserrat(
            fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400),
      ),
    );
  }
}
