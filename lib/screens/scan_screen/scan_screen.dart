import 'package:e_wallet_app/screens/common_widgets/common_app_bar.dart';
import 'package:e_wallet_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ScanScreen extends StatelessWidget {
  const ScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.lightGray,
      appBar: commonAppBar(
        title: "Scan",
        viewleading: true,
         viewAction: false,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Center(child: SvgPicture.asset("asset/svg_images/scan_icon.svg")),
    );
  }
}
