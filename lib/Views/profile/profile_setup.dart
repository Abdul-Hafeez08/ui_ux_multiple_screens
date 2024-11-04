import 'dart:async';

import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo_app/Views/Widgets/Auth/auth_text_field.dart';

import '../invitation/invite_friend.dart';

class ProfileSetup extends StatefulWidget {
  const ProfileSetup({super.key});

  @override
  State<ProfileSetup> createState() => _ProfileSetupState();
}

class _ProfileSetupState extends State<ProfileSetup> {
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  void loginbtn() {}

  bool ismale = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          height: 40,
          width: double.infinity,
          child: Image.asset('assets/images/sms.png'),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/back2.png'),
              filterQuality: FilterQuality.high,
            ),
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                color: Colors.black,
                width: double.infinity,
                height: 50,
                child: Text(
                  'Profile Setup',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2,
                      color: Colors.white,
                      fontSize: 20),
                ),
              ),
              const SizedBox(height: 10),
              CircularProfileAvatar(
                '',
                borderColor: Colors.black45,
                borderWidth: 3,
                elevation: 2,
                radius: 60,
                initialsText: const Text(
                  '+',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: TextFieldAuth(
                    text: 'Your Name',
                    logo: Icons.person,
                    keybordtype: TextInputType.text,
                    obscuretext: false),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: TextFieldAuth(
                    text: 'User Name',
                    logo: Icons.alternate_email,
                    keybordtype: TextInputType.text,
                    obscuretext: false),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {});
                      ismale = true;
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: ismale ? Colors.cyan : Colors.grey,
                          shape: BoxShape.circle,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black38,
                                offset: Offset(1.0, 10.0),
                                blurRadius: 30)
                          ]),
                      child: const Icon(
                        Icons.male,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        ismale = false;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: !ismale ? Colors.pink : Colors.grey,
                          shape: BoxShape.circle,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black38,
                                offset: Offset(1.0, 10.0),
                                blurRadius: 30)
                          ]),
                      child: const Icon(
                        Icons.female,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: RoundedLoadingButton(
                  color: const Color.fromARGB(255, 0, 5, 79),
                  width: 200,
                  controller: _btnController,
                  onPressed: () {
                    loginbtn();
                    Timer(const Duration(seconds: 2), () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: const InvitrFriend(),
                        ),
                      );
                    });
                  },
                  child: Text(
                    "Login",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        color: Colors.white,
                        fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
