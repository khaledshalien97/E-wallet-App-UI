import 'dart:ui';

import 'package:e_wallet_app/screens/common_widgets/common_button_widget.dart';
import 'package:e_wallet_app/screens/common_widgets/common_text_widget.dart';
import 'package:e_wallet_app/screens/pin_screen/pin_screen.dart';
import 'package:e_wallet_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 50,
                  left: 0,
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xFF35E97E).withOpacity(0.6),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                    child: Container(color: Colors.transparent),
                  ),
                ),

                Positioned(
                  top: 150,
                  right: 0,
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xff139E8D).withOpacity(0.6),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                    child: Container(color: Colors.transparent),
                  ),
                ),
                Positioned(
                  child: SvgPicture.asset("asset/svg_images/Element.svg"),
                ),
                Positioned(
                  child: SvgPicture.asset(
                    "asset/svg_images/Card.svg",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                commonTextWidget(
                  text: "Fast and easy payment solution",
                  googleFonts: GoogleFonts.montserrat,
                  fontSize: 36,
                  fontWeight: FontWeight.w500,
                  color: AppTheme.textWhite,
                ),
                SizedBox(height: 20),

                commonTextWidget(
                  text:
                      "Spending methods and financial management through digital banks",
                  googleFonts: GoogleFonts.poppins,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppTheme.mediumGray,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
        child: commonButtonWidget(context, "Get Started", () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PinScreen()),
          );
        }),
      ),
    );
  }
}
