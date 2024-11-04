import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo_app/Views/Features/card_button.dart';

import 'card_button2.dart';

class BatteryInfo extends StatelessWidget {
  const BatteryInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(right: 55),
          child: Container(
            alignment: Alignment.center,
            height: 40,
            width: double.infinity,
            child: Image.asset('assets/images/sms.png'),
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            FontAwesomeIcons.arrowLeft,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffFAD585),
              Color(0xffF47A7D),
            ],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Battery Info",
                  style: GoogleFonts.nunito(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                child: const Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 9,
                            child: CardButton(
                              text: "text",
                              sectext: "sectext",
                              seccolor: Colors.red,
                            ),
                          ),
                          Expanded(
                            flex: 10,
                            child: CardButton(
                              sectext: "-",
                              seccolor: Colors.red,
                              text: "Charging Type",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 13,
                            child: CardButton2(
                              sectext: "",
                              seccolor: Colors.red,
                              text: "Battery Percet",
                            ),
                          ),
                          Expanded(
                            flex: 9,
                            child: CardButton(
                              sectext: "36",
                              seccolor: Colors.red,
                              text: "Temperature",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 9,
                            child: CardButton(
                              sectext: "Good",
                              seccolor: Colors.red,
                              text: "Battery Health",
                            ),
                          ),
                          Expanded(
                            flex: 11,
                            child: CardButton(
                              sectext: "Li-poly",
                              seccolor: Colors.red,
                              text: "Battery Type",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "My Battery Status",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.nunito(
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                                color:
                                    const Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 9,
                                    child: CardButton(
                                      text: "text",
                                      sectext: "sectext",
                                      seccolor: Colors.red,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 10,
                                    child: CardButton(
                                      sectext: "-",
                                      seccolor: Colors.red,
                                      text: "Charging Type",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 13,
                                    child: CardButton2(
                                      sectext: "",
                                      seccolor: Colors.red,
                                      text: "Battery Percet",
                                    ),
                                  ),
                                  Expanded(
                                    flex: 8,
                                    child: CardButton(
                                      sectext: "36",
                                      seccolor: Colors.red,
                                      text: "Temperature",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 9,
                                    child: CardButton(
                                      sectext: "Good",
                                      seccolor: Colors.red,
                                      text: "Battery Health",
                                    ),
                                  ),
                                  Expanded(
                                    flex: 11,
                                    child: CardButton(
                                      sectext: "Li-poly",
                                      seccolor: Colors.red,
                                      text: "Battery Type",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
