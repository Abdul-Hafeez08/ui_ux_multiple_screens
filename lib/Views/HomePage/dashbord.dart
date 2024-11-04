import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tyamo_app/Views/Features/Device_info.dart';
import 'package:tyamo_app/Views/HomePage/Dashbord/dashbord_feature_card.dart';

import 'Dashbord/dashbord_mini_card.dart';

class DashBord extends StatelessWidget {
  const DashBord({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.center,
          child: Text(
            "Dashbord",
            style: GoogleFonts.nunito(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 20,
                letterSpacing: 2),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20),
          alignment: Alignment.centerLeft,
          child: Text(
            "Your friend",
            style: GoogleFonts.nunito(
                color: const Color(0xff990099),
                fontWeight: FontWeight.w800,
                fontSize: 18,
                letterSpacing: 1),
          ),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          child: Card(
            elevation: 5,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 25),
                          child: CircularProfileAvatar(
                            "",
                            backgroundColor: Colors.cyan,
                            borderColor: Colors.black,
                            borderWidth: 1,
                            radius: 40,
                            elevation: 20,
                            cacheImage: true,
                            errorWidget: (context, url, error) {
                              return const Icon(Icons.face);
                            },
                            animateFromOldImageOnUrlChange: true,
                            placeHolder: (context, url) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const SizedBox(width: 4),
                                const Icon(
                                  Icons.fiber_manual_record,
                                  color: Colors.grey,
                                  size: 15,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  "Munwar Brohi",
                                  style: GoogleFonts.nunito(
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.w800,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  child: const Icon(
                                    Icons.location_on,
                                    color: Colors.cyan,
                                    size: 25,
                                  ),
                                ),
                                const SizedBox(width: 3),
                                Container(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Quest Nawabshah Boys \nHostel B Block",
                                    style: GoogleFonts.nunito(
                                      color: const Color(0xff000000),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Text(
                                "status",
                                style: GoogleFonts.nunito(
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "Offline",
                                style: GoogleFonts.nunito(
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        width: 2,
                        child: Container(
                          color: Colors.grey,
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Text(
                                "User status",
                                style: GoogleFonts.nunito(
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "N/A",
                                style: GoogleFonts.nunito(
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        width: 2,
                        child: Container(
                          color: Colors.grey,
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Text(
                                "Mood",
                                style: GoogleFonts.nunito(
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "N/A",
                                style: GoogleFonts.nunito(
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Row(
          children: [
            Flexible(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: const DeviceInfo(),
                    ),
                  );
                },
                child: const DashBordMiniCard(
                  text: "Mobile Info",
                  icon: Icons.phone_android,
                  color1: Color(0xff4Fc174),
                  color2: Color(0xff00D7A9),
                ),
              ),
            ),
            const Flexible(
              child: DashBordMiniCard(
                text: "Gallery",
                icon: Icons.photo,
                color1: Color.fromARGB(255, 236, 174, 5),
                color2: Color.fromARGB(255, 248, 195, 96),
              ),
            ),
            const Flexible(
              child: DashBordMiniCard(
                text: "Mood",
                icon: Icons.mood,
                color1: Color.fromARGB(255, 228, 27, 134),
                color2: Color.fromARGB(255, 243, 117, 184),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.only(left: 20),
          alignment: Alignment.centerLeft,
          child: Text(
            "Our Features",
            style: GoogleFonts.nunito(
                color: const Color(0xff004C99),
                fontWeight: FontWeight.w800,
                fontSize: 18,
                letterSpacing: 1),
          ),
        ),
        const SizedBox(height: 5),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 13),
          child: Row(
            children: [
              Flexible(
                child: FeatureCard(text: "Playlist", icon: Icons.fast_forward),
              ),
              const SizedBox(width: 5),
              Flexible(
                child: FeatureCard(text: "Location", icon: Icons.location_on),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 13),
          child: Row(
            children: [
              Flexible(
                child: FeatureCard(
                    text: "To do List", icon: FontAwesomeIcons.bookAtlas),
              ),
              const SizedBox(width: 5),
              Flexible(
                child:
                    FeatureCard(text: "Diary", icon: Icons.menu_book_outlined),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 13),
          child: Row(
            children: [
              Flexible(
                child:
                    FeatureCard(text: "Surprise Notes", icon: Icons.note_alt),
              ),
              SizedBox(width: 5),
              Flexible(
                child: FeatureCard(
                    text: "Activity", icon: Icons.volunteer_activism),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
