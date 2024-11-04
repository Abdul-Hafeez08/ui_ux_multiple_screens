import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo_app/Views/Auth/login.dart';

import '../Widgets/Auth/auth_text_field.dart';
import '../Widgets/Auth/authheading.dart';

class Register extends StatelessWidget {
  Register({super.key});
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();
  void loginbtn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Register',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 5, 79),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              AuthHeading(
                  mainText: 'Sign Up to Connect',
                  subText: 'with your Partner',
                  logo: 'assets/images/sms.png',
                  fontSize: 18,
                  logoSize: 25),
              const SizedBox(height: 30),
              const TextFieldAuth(
                  text: "Email",
                  logo: Icons.alternate_email,
                  keybordtype: TextInputType.emailAddress,
                  obscuretext: false),
              const SizedBox(height: 20),
              const TextFieldAuth(
                  text: "Password",
                  logo: Icons.password,
                  keybordtype: TextInputType.number,
                  obscuretext: true),
              const SizedBox(height: 20),
              const TextFieldAuth(
                  text: "Conform Password",
                  logo: Icons.lock_reset,
                  keybordtype: TextInputType.number,
                  obscuretext: true),
              const SizedBox(height: 30),
              RoundedLoadingButton(
                color: const Color.fromARGB(255, 0, 5, 79),
                width: 2000,
                controller: _btnController,
                onPressed: () {
                  loginbtn();
                },
                child: Text(
                  "Register",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      color: Colors.white,
                      fontSize: 16),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "By Registring, You Agree To our Terms & Condition ",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal,
                      letterSpacing: 1,
                      color: const Color.fromARGB(255, 72, 72, 72),
                      fontSize: 9),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already Registered!",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1,
                        color: const Color(0xff5A5B5B),
                        fontSize: 15),
                  ),
                  Hero(
                    tag: 'Auth',
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: Login(),
                          ),
                        );
                      },
                      child: Text(
                        'Log in',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                            color: Colors.blue,
                            fontSize: 15),
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
