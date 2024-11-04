import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardButton extends StatelessWidget {
  const CardButton({
    super.key,
    required this.text,
    required this.sectext,
    required this.seccolor,
  });
  final String text, sectext;

  final Color seccolor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Card(
                elevation: 10,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        elevation: WidgetStateProperty.all<double>(0),
                        backgroundColor:
                            WidgetStateProperty.all<Color>(Colors.transparent),
                        overlayColor:
                            WidgetStateProperty.all<Color>(Colors.transparent),
                        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.all(0),
                        ),
                      ),
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            text,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            sectext,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              color: Colors.red,
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
