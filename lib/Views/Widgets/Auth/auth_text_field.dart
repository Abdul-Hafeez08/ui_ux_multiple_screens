import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextFieldAuth extends StatelessWidget {
  const TextFieldAuth({
    super.key,
    required this.text,
    required this.logo,
    required this.keybordtype,
    required this.obscuretext,
  });
  final String text;
  final IconData logo;
  final TextInputType keybordtype;
  final bool obscuretext;
  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.start,
      obscureText: obscuretext,
      autofocus: false,
      textInputAction: TextInputAction.none,
      keyboardType: keybordtype,
      textAlignVertical: TextAlignVertical.center,
      style: GoogleFonts.poppins(fontSize: 15, color: Colors.black),
      decoration: InputDecoration(
        fillColor: const Color(0xffE7E7F2),
        filled: true,
        prefixIcon: Icon(
          logo,
          size: 17,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIconColor: const Color.fromARGB(255, 21, 161, 248),
        label: Text(
          text,
          style: GoogleFonts.poppins(fontSize: 15.sp, color: Colors.black),
        ),
      ),
    );
  }
}
