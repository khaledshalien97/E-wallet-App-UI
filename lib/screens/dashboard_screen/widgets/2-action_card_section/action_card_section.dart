import 'package:e_wallet_app/screens/dashboard_screen/widgets/2-action_card_section/action_card.dart';
import 'package:e_wallet_app/screens/receive_screen/receive_screen.dart';
import 'package:e_wallet_app/screens/scan_screen/scan_screen.dart';
import 'package:e_wallet_app/screens/topup_screen/topup_screen.dart';
import 'package:e_wallet_app/screens/transfer_screen/transfer_screen.dart';
import 'package:flutter/material.dart';

class ActionCardSection extends StatelessWidget {
  const ActionCardSection({super.key});
  static List<ActionItem> actions = [
    ActionItem(
      "Transfer",
      "asset/svg_images/Send.svg",
      (context) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TransferScreen()),
      ),
    ),
    ActionItem(
      "Top Up",
      "asset/svg_images/plus-circle.svg",
      (context) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TopUpScreen()),
      ),
    ),
    ActionItem(
      "Scan",
      "asset/svg_images/Scan.svg",
      (context) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ScanScreen()),
      ),
    ),
    ActionItem(
      "Receive",
      "asset/svg_images/Arrow_Down_Square.svg",
      (context) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ReceiveScreen()),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 4,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 2.6,
          ),
          itemBuilder: (context, index) {
            return ActionCard(
              title: actions[index].title,
              icon: actions[index].icon,
              onpress: () {
                actions[index].onPressed(context);
              },
            );
          },
        ),
      ],
    );
  }
}

class ActionItem {
  final String title;
  final String icon;
  final Function(BuildContext context) onPressed;
  const ActionItem(this.title, this.icon, this.onPressed);
}
