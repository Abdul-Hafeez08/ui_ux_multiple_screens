import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tyamo_app/Views/Features/BatteryInfo.dart';
import 'package:tyamo_app/Views/Features/top_banner.dart';

import 'gradiend_button.dart';

class DeviceInfo extends StatelessWidget {
  const DeviceInfo({super.key});

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
      body: Column(
        children: [
          const TopBanner(
            text: "Device Info",
            clr: [
              Color(0xff4FC174),
              Color(0xff00D7A9),
            ],
          ),
          const SizedBox(height: 30),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const Expanded(
                        flex: 10,
                        child: GradientButton(
                            text: "User Status",
                            clr: [Color(0xff4FC174), Color(0xff00D7A9)],
                            overlaycolor: Colors.cyan,
                            isvertical: true),
                      ),
                      Expanded(
                        flex: 6,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: const BatteryInfo(),
                              ),
                            );
                          },
                          child: const GradientButton(
                              text: "Battery",
                              clr: [Color(0xffFAD585), Color(0xffF47A7D)],
                              overlaycolor: Colors.orangeAccent,
                              isvertical: true),
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  child: GradientButton(
                      text: "General",
                      clr: [Color(0xff50C9C2), Color(0xff95DEDA)],
                      overlaycolor: Color(0xff50C9C2),
                      isvertical: false),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: const Row(
                children: [
                  Expanded(
                    flex: 10,
                    child: GradientButton(
                        text: "Device\nSpacs",
                        clr: [Color(0xff02A9AF), Color(0xff00CDAD)],
                        overlaycolor: Color(0xff01BCAA),
                        isvertical: true),
                  ),
                  Expanded(
                    flex: 14,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 6,
                          child: GradientButton(
                              text: "Location",
                              clr: [Color(0xffB893D6), Color(0xff8CA5DB)],
                              overlaycolor: Color(0xffB159C6),
                              isvertical: true),
                        ),
                        Expanded(
                          flex: 10,
                          child: GradientButton(
                              text: "Orientation",
                              clr: [Color(0xffF2709B), Color(0xffFF9370)],
                              overlaycolor: Color(0xffF98583),
                              isvertical: true),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
