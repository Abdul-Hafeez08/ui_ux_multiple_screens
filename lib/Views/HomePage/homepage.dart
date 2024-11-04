import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo_app/Views/Widgets/homepage/drawer_list_tile.dart';
import 'package:tyamo_app/Views/HomePage/dashbord.dart';
import 'package:tyamo_app/Views/profile/profile.dart';
import 'package:tyamo_app/Views/profile/profile_settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _homepageKey = GlobalKey();

  List<IconData> icons = [
    FontAwesomeIcons.circleUser,
    FontAwesomeIcons.house,
    FontAwesomeIcons.bell
  ];

  int page = 1;
  int pageview = 1;
  PageController pageController = PageController(initialPage: 1);

  Widget pageviewsection() {
    return PageView(
      controller: pageController,
      onPageChanged: (value) {
        setState(() {
          page = value;
        });
      },
      children: const [
        Profile(),
        DashBord(),
        ProfileSettings(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _homepageKey,
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: Container(
          alignment: Alignment.center,
          height: 40,
          width: double.infinity,
          child: Image.asset('assets/images/sms.png'),
        ),
        leading: GestureDetector(
          onTap: () {
            _homepageKey.currentState!.openDrawer();
          },
          child: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: SizedBox(
              height: 35,
              width: 35,
              child: Image.asset(
                'assets/images/message.png',
              ),
            ),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      drawer: GFDrawer(
        child: Column(
          children: [
            Expanded(
              flex: 0,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
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
                          onTap: () {
                            pageController.animateToPage(0,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.linear);
                            Navigator.of(context).pop();
                          },
                          animateFromOldImageOnUrlChange: true,
                          placeHolder: (context, url) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                        ),
                      ),
                      Flexible(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Abdul Hafeez",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.poppins(
                              letterSpacing: 1,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "hafeezt@gmail.com",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.poppins(),
                          ),
                        ],
                      ))
                    ],
                  )
                ],
              ),
            ),
            Expanded(
                flex: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 10),
                        decoration: const BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Text(
                          "Premium",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    )
                  ],
                )),
            const Expanded(flex: 0, child: Divider()),
            const SizedBox(height: 20),
            const Column(
              children: [
                DrawerList(
                  iconname: FontAwesomeIcons.solidCreditCard,
                  tiletitle: "Subscription",
                ),
                DrawerList(
                  iconname: FontAwesomeIcons.grip,
                  tiletitle: "Settings",
                ),
                DrawerList(
                  iconname: FontAwesomeIcons.circleQuestion,
                  tiletitle: "Help",
                ),
                DrawerList(
                  iconname: FontAwesomeIcons.message,
                  tiletitle: "Feedback",
                ),
                DrawerList(
                  iconname: FontAwesomeIcons.share,
                  tiletitle: "Tell Other",
                ),
                DrawerList(
                  iconname: FontAwesomeIcons.starHalfStroke,
                  tiletitle: "Rate The App",
                ),
              ],
            ),
            const Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(),
                DrawerList(
                  iconname: FontAwesomeIcons.rightFromBracket,
                  tiletitle: "Sign Out",
                ),
              ],
            ))
          ],
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: icons,
        onTap: (p0) {
          setState(() {});
          pageview = p0;
          pageController.animateToPage(p0,
              duration: const Duration(milliseconds: 200),
              curve: Curves.linear);
        },
        activeIndex: page,
        activeColor: Colors.blue,
        inactiveColor: const Color.fromARGB(255, 138, 3, 100),
        splashSpeedInMilliseconds: 300,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        notchSmoothness: NotchSmoothness.sharpEdge,
        gapLocation: GapLocation.none,
      ),
      body: pageviewsection(),
    );
  }
}
