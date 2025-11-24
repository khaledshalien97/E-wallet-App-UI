import 'package:e_wallet_app/screens/common_widgets/common_app_bar.dart';
import 'package:e_wallet_app/screens/common_widgets/common_button_widget.dart';
import 'package:e_wallet_app/screens/common_widgets/common_text_widget.dart';
import 'package:e_wallet_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TransferCompletedScreen extends StatelessWidget {
  const TransferCompletedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(
        title: "Transfer Completed",
        viewleading: false,
         viewAction: false,
        onPressed: () {},
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SvgPicture.asset("asset/svg_images/success.svg"),
            SizedBox(height: 15),
            commonTextWidget(
              text: "Transfer Successful",
              googleFonts: GoogleFonts.montserrat,
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: AppTheme.textWhite,
            ),
            SizedBox(height: 20),
            commonTextWidget(
              text: "\$24,734.00",
              googleFonts: GoogleFonts.montserrat,
              fontSize: 36,
              fontWeight: FontWeight.w500,
              color: AppTheme.primaryGreen,
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 240,

              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  children: const [
                    TextSpan(
                      text: "The transfer, ",
                      style: TextStyle(color: AppTheme.mediumGray),
                    ),
                    TextSpan(
                      text: "Sunday 12 April 2022 ",
                      style: TextStyle(color: AppTheme.textWhite),
                    ),
                    TextSpan(
                      text: "to ",
                      style: TextStyle(color: AppTheme.mediumGray),
                    ),
                    TextSpan(
                      text: "Khaled Shalien",
                      style: TextStyle(color: AppTheme.textWhite),
                    ),
                    TextSpan(
                      text: "has been successful",
                      style: TextStyle(color: AppTheme.textWhite),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                SvgPicture.asset("asset/svg_images/Arrow_Down_Square.svg"),
                SizedBox(width: 10),
                commonTextWidget(
                  text: "Download Struk",
                  googleFonts: GoogleFonts.poppins,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppTheme.textWhite,
                ),
              ],
            ),
            SizedBox(height: 40),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
                child: commonButtonWidget(context, "Done", () {}),
              ),
            ),
            commonTextWidget(
              text: "Do you want to make another transfer?",
              googleFonts: GoogleFonts.montserrat,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppTheme.primaryGreen,
            ),
          ],
        ),
      ),
    );
  }
}
