import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthHeading extends StatelessWidget {
  AuthHeading({
    super.key,
    required this.mainText,
    required this.subText,
    required this.logo,
    required this.fontSize,
    required this.logoSize,
  });
  final String mainText;
  final String subText;
  final String logo;
  final double fontSize;
  final double logoSize;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        Row(
          children: [
            Text(
              mainText,
              style: GoogleFonts.poppins(
                  fontSize: fontSize, fontWeight: FontWeight.bold),
            ),
            Container(
                height: logoSize, width: logoSize, child: Image.asset(logo))
          ],
        ),
        Text(
          subText,
          style: GoogleFonts.poppins(
              fontSize: fontSize, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
