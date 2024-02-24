import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String header = "assets/UI Header Design.png";
  String hero = "assets/Hero.png";
  String spiner = "assets/Spiner.png";
  String footer = "assets/UI Footer Design.png";

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(header),
          Text(
            "Angle Sure",
            style: GoogleFonts.akayaTelivigala(
              color: const Color(0xFF2F80ED),
              fontSize: 36,
              fontWeight: FontWeight.w400,
            ),
          ),
          Image.asset(
            hero,
            width: 150,
          ),
          Image.asset(spiner),
          Image.asset(
            footer,
            width: 755,
            height: 255,
          ),
        ],
      ),
    );
  }
}
