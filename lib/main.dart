import 'package:e_wallet_app/screens/onboarding_screen/onboaeding_screen.dart';
import 'package:e_wallet_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Wallet App',
      theme: AppTheme.darkTheme,
      home: OnBoardingScreen(),
    );
  }
}
