import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    super.key,
    required this.text,
    required this.clr,
    required this.overlaycolor,
    required this.isvertical,
  });
  final String text;
  final List<Color> clr;
  final bool isvertical;
  final Color overlaycolor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: isvertical
                            ? Alignment.topCenter
                            : Alignment.centerLeft,
                        end: isvertical
                            ? Alignment.bottomCenter
                            : Alignment.centerRight,
                        colors: clr),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        elevation: WidgetStateProperty.all<double>(0),
                        backgroundColor:
                            WidgetStateProperty.all<Color>(Colors.transparent),
                        overlayColor:
                            WidgetStateProperty.all<Color>(overlaycolor),
                        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.all(0),
                        ),
                      ),
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            text,
                            style: GoogleFonts.nunito(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              letterSpacing: 2,
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
