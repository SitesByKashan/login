import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String header = "assets/UI Header Design.png";
  String google = "assets/Google Icon.png";
  String facebook = "assets/Facebook Icon.png";
  String twitter = "assets/Twitter Logo.png";
  String footer = "assets/UI Footer Design.png";
  String line1 = "assets/Line 1.png";
  String line2 = "assets/Line 2.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              header,
              width: 1200,
              height: 225,
            ),
            Text(
              "Sign In To Continue",
              style: GoogleFonts.aladin(
                color: const Color(0xFF4F4F4F),
                fontSize: 26,
                fontWeight: FontWeight.w400,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(1, 5, 1, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(google),
                  Image.asset(facebook),
                  Image.asset(twitter),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(line1),
                Text(
                  "OR",
                  style: GoogleFonts.aladin(
                    color: const Color(0xFF4F4F4F),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Image.asset(line2),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(26, 0, 26, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Email ID",
                    style: GoogleFonts.aladin(
                      color: const Color(0xFF4F4F4F),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(26, 5, 26, 15),
              child: TextField(
                style: const TextStyle(
                  height: 0.08,
                ),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(26, 0, 26, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Password",
                    style: GoogleFonts.aladin(
                      color: const Color(0xFF4F4F4F),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "Forgot Password",
                    style: GoogleFonts.aladin(
                      color: const Color(0xFF4F4F4F),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(26, 5, 26, 15),
              child: TextField(
                style: const TextStyle(
                  height: 0.08,
                ),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2F80ED),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signup()));
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2F80ED),
                  ),
                ),
              ],
            ),
            const Text("Terms and Conditions | Privacy Policy"),
            Image.asset(
              footer,
              width: 755,
              height: 255,
            ),
          ],
        ),
      ),
    );
  }
}
