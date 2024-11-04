import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBordMiniCard extends StatelessWidget {
  const DashBordMiniCard(
      {super.key,
      required this.text,
      required this.icon,
      required this.color1,
      required this.color2,
      c});

  final Color color1, color2;
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 40,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 0.3),
              blurRadius: 3,
            ),
          ],
          gradient: LinearGradient(
            colors: [
              color1,
              color2,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 25,
              ),
              Text(
                text,
                style: GoogleFonts.poppins(fontSize: 13, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    ); //card mini
  }
}
