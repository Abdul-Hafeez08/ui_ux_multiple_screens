import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBanner extends StatelessWidget {
  const TopBanner({super.key, required this.text, required this.clr});
  final String text;
  final List<Color> clr;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(gradient: LinearGradient(colors: clr)),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.nunito(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            letterSpacing: 2,
            color: Colors.white),
      ),
    );
  }
}
