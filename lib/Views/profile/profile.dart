import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool more = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 10),
          Text(
            "MY PROFILE",
            style: GoogleFonts.nunito(
              letterSpacing: 2,
              fontSize: 22,
              fontWeight: FontWeight.w800,
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bac.jpeg'),
                fit: BoxFit.fill,
              ),
            ),
            child: CircularProfileAvatar(
              "",
              backgroundColor: Colors.cyan,
              borderColor: Colors.black,
              borderWidth: 1,
              radius: 60,
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
          const SizedBox(height: 15),
          Text(
            "Abdul Hafeez",
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          Text(
            "Abdulhafeez@gmail.com",
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w600, fontSize: 16),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            style: ButtonStyle(
              side: WidgetStateProperty.all<BorderSide>(
                  const BorderSide(color: Color(0xff671AFC))),
              backgroundColor: WidgetStateProperty.all(Colors.white),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            onPressed: () {},
            child: const Text(
              'Edit Profile Details',
              style: TextStyle(color: Color(0xff671AFC), fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CardDetailRow(
                  type: "Email",
                  val: "abdulhafeez@gmail.com",
                  clr: Colors.grey.shade300,
                  icon: FontAwesomeIcons.envelope,
                ),
                const CardDetailRow(
                  type: "Country",
                  val: "Pakistan",
                  clr: Colors.transparent,
                  icon: FontAwesomeIcons.flag,
                ),
                CardDetailRow(
                  type: "Phone",
                  val: "abdulhafeez@gmail.com",
                  clr: Colors.grey.shade300,
                  icon: FontAwesomeIcons.mobileScreen,
                ),
                more
                    ? const CardDetailRow(
                        type: "Gender",
                        val: "Male",
                        clr: Colors.transparent,
                        icon: FontAwesomeIcons.venusMars,
                      )
                    : Container(),
                more
                    ? CardDetailRow(
                        type: "Partner",
                        val: "Unknown",
                        clr: Colors.grey.shade300,
                        icon: FontAwesomeIcons.person,
                      )
                    : Container(),
                more
                    ? const CardDetailRow(
                        type: "UID",
                        val: "KJGHU55HHG7GS66JJS",
                        clr: Colors.transparent,
                        icon: FontAwesomeIcons.fingerprint,
                      )
                    : Container(),
                more
                    ? CardDetailRow(
                        type: "Account Created",
                        val: "01/08/2024",
                        clr: Colors.grey.shade300,
                        icon: FontAwesomeIcons.clock,
                      )
                    : Container(),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ButtonStyle(
                    side: WidgetStateProperty.all<BorderSide>(
                        const BorderSide(color: Colors.transparent)),
                    backgroundColor:
                        WidgetStateProperty.all(Colors.grey.shade300),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      more = !more;
                    });
                  },
                  child: Text(
                    more ? "- Show Less" : "+ Show More",
                    style: const TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 170,
                      width: 170,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 255, 106, 220),
                          Color.fromARGB(255, 222, 16, 174)
                        ]),
                        borderRadius: BorderRadius.all(
                          Radius.circular(35),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Subscribe to",
                            style: GoogleFonts.nunito(
                                color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "Premium",
                            style: GoogleFonts.nunito(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 170,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 0, 170, 255),
                          Color.fromARGB(255, 69, 191, 252)
                        ]),
                        borderRadius: BorderRadius.all(
                          Radius.circular(35),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Subscribed on",
                            style: GoogleFonts.nunito(
                                color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "N/A",
                            style: GoogleFonts.nunito(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CardDetailRow extends StatelessWidget {
  const CardDetailRow({
    super.key,
    required this.type,
    required this.val,
    required this.clr,
    required this.icon,
  });
  final String type, val;
  final Color clr;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
          color: clr,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        height: 50,
        width: double.infinity,
        child: Row(
          children: <Widget>[
            const SizedBox(width: 10),
            Icon(icon),
            const SizedBox(width: 10),
            Text(
              type,
              textScaleFactor: 1,
              textAlign: TextAlign.left,
              style: GoogleFonts.nunito(),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    val,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w600, fontSize: 16),
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
