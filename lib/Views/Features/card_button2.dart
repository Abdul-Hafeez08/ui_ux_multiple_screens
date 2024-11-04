import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class CardButton2 extends StatelessWidget {
  const CardButton2({
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
          child: SizedBox(
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
                          const SizedBox(height: 10),
                          SleekCircularSlider(
                            min: 0,
                            max: 100,
                            initialValue: 76,
                            appearance: CircularSliderAppearance(
                              size: 80,
                              customColors: CustomSliderColors(
                                progressBarColor: const Color(0xffF47A7D),
                              ),
                              infoProperties: InfoProperties(
                                mainLabelStyle: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                              customWidths:
                                  CustomSliderWidths(progressBarWidth: 10),
                            ),
                            onChange: (double value) {
                              // callback providing a value while its being changed (with a pan gesture)
                            },
                            onChangeStart: (double startValue) {
                              // callback providing a starting value (when a pan gesture starts)
                            },
                            onChangeEnd: (double endValue) {
                              // ucallback providing an ending value (when a pan gesture ends)
                            },
                          )
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
