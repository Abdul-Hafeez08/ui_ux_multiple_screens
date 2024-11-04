import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerList extends StatelessWidget {
  const DrawerList(
      {super.key, required this.iconname, required this.tiletitle});
  final IconData iconname;
  final String tiletitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ListTile(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Icon(
                iconname,
                color: Colors.cyan,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                tiletitle,
                style: GoogleFonts.poppins(
                  letterSpacing: 1,
                  color: const Color(0xff2a3d66),
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
