import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../Widgets/Auth/auth_text_field.dart';
import '../Widgets/Auth/authheading.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();
  void loginbtn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Forgot Password',
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
                  mainText: 'Get Your Forgot Password',
                  subText: '',
                  logo: 'assets/images/reset.png',
                  fontSize: 18,
                  logoSize: 25),
              const SizedBox(height: 30),
              SizedBox(
                height: 150,
                width: 150,
                child: Image.asset('assets/images/forgotpassword.png'),
              ),
              const SizedBox(height: 20),
              const TextFieldAuth(
                  text: "Email",
                  logo: Icons.alternate_email,
                  keybordtype: TextInputType.emailAddress,
                  obscuretext: false),
              const SizedBox(height: 20),
              Text(
                'Enter your Registered Email, Link to reset the password will be sent on that Email ',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(),
              ),
              const SizedBox(height: 30),
              RoundedLoadingButton(
                color: const Color.fromARGB(255, 0, 5, 79),
                width: 2000,
                controller: _btnController,
                onPressed: () {
                  loginbtn();
                },
                child: Text(
                  "Get Link",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      color: Colors.white,
                      fontSize: 16),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
