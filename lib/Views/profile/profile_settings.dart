import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                height: 270,
                decoration: BoxDecoration(
                  color: const Color(0xff671AFc),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width, 120),
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            FontAwesomeIcons.gear,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Settings",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.nunito(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                    child: Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
                            child: Row(
                              children: [
                                CircularProfileAvatar(
                                  "",
                                  backgroundColor: Colors.cyan,
                                  borderColor: Colors.black,
                                  borderWidth: 1,
                                  radius: 35,
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
                                const SizedBox(width: 15),
                                Text(
                                  "Abdul Hafeez",
                                  style: GoogleFonts.nunito(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            height: 5,
                            color: Colors.grey.shade400,
                          ),
                          const SizedBox(height: 15),
                          const HeadingText(heading: "Profile Settings"),
                          const SizedBox(height: 10),
                          const SubHeading(
                            text: "Edit Name",
                            sectext: "",
                          ),
                          const SubHeading(
                            text: "Edit Phone Number",
                            sectext: "",
                          ),
                          const SubHeading(
                            text: "Change Password",
                            sectext: "",
                          ),
                          const SubHeading(
                            text: "Email Status",
                            sectext: "Not Verified",
                          ),
                          const SizedBox(height: 10),
                          const HeadingText(heading: "Notification Settings"),
                          const SizedBox(height: 10),
                          Container(
                            color: Colors.transparent,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 23),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Push Notification",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  GFToggle(
                                    onChanged: (val) {},
                                    enabledTrackColor: const Color(0xff671AFc),
                                    value: true,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const HeadingText(heading: "Application Settings"),
                          const SizedBox(height: 10),
                          const SubHeading(
                            text: "Background Seetings",
                            sectext: "Not Allowed",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

//Below is reuseable Main Heading
class HeadingText extends StatelessWidget {
  const HeadingText({super.key, required this.heading});
  final String heading;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        heading,
        textAlign: TextAlign.left,
        style: GoogleFonts.nunito(
            color: const Color(0xff671AFc),
            fontSize: 18,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}

class SubHeading extends StatelessWidget {
  const SubHeading({super.key, required this.text, required this.sectext});
  final String text;
  final String sectext;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 23),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                text,
                textAlign: TextAlign.left,
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                sectext,
                textAlign: TextAlign.right,
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w600, color: Colors.red),
              ),
            ),
            const Icon(
              FontAwesomeIcons.arrowRight,
              size: 15,
            )
          ],
        ),
      ),
    );
  }
}
