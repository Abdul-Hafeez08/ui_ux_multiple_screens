import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo_app/Views/Auth/forgot_password.dart';
import 'package:tyamo_app/Views/Auth/register.dart';
import 'package:tyamo_app/Views/Widgets/Auth/auth_text_field.dart';
import 'package:tyamo_app/Views/Widgets/Auth/authheading.dart';
import 'package:tyamo_app/Views/profile/profile_setup.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();
  void loginbtn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
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
                  mainText: 'Login to Connect',
                  subText: 'with your Partner',
                  logo: 'assets/images/sms.png',
                  fontSize: 18.sp,
                  logoSize: 23.sp),
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
              const SizedBox(height: 30),
              RoundedLoadingButton(
                color: const Color.fromARGB(255, 0, 5, 79),
                width: 200,
                controller: _btnController,
                onPressed: () {
                  Timer(const Duration(seconds: 2), () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: const ProfileSetup(),
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
              const SizedBox(height: 30),
              Container(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: ForgotPassword(),
                      ),
                    );
                  },
                  child: Text(
                    'Forgot Password?',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1,
                        color: Colors.red,
                        fontSize: 15.sp),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't Have an Account?",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1,
                        color: const Color(0xff5A5B5B),
                        fontSize: 15.5.sp),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          child: Register(),
                        ),
                      );
                    },
                    child: Hero(
                      tag: 'Auth',
                      child: Text(
                        'Register Here',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,
                          color: Colors.blue,
                          fontSize: 16.sp,
                        ),
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
