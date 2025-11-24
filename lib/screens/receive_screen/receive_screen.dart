import 'package:e_wallet_app/model/receive_model.dart';
import 'package:e_wallet_app/screens/common_widgets/common_app_bar.dart';
import 'package:e_wallet_app/screens/common_widgets/common_list_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scrollable_list_tab_scroller/scrollable_list_tab_scroller.dart';

class ReceiveScreen extends StatefulWidget {
  const ReceiveScreen({super.key});

  @override
  State<ReceiveScreen> createState() => _ReceiveScreenState();
}

class _ReceiveScreenState extends State<ReceiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(
        title: "Receive",
        viewleading: true,
        viewAction: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("asset/svg_images/Filter.svg"),
          ),
        ],
        onPressed: () {
          Navigator.pop(context);
        },
      ),

      body: SafeArea(
        child: ScrollableListTabScroller(
          itemCount: dummySections.length,

          /// ----- The Tabs -----
          tabBuilder: (context, index, isActive) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              child: Text(
                dummySections[index].title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: isActive ? Colors.white : Colors.white54,
                ),
              ),
            );
          },

          itemBuilder: (context, index) {
            final section = dummySections[index];
            return _MonthSection(section: section);
          },
        ),
      ),
    );
  }
}

class _MonthSection extends StatelessWidget {
  final ReceiveSection section;
  const _MonthSection({required this.section});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            section.title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 24),

          ...section.items.map(
            (item) => commonListTileWidget(
              index: 0,
              title: item.name,
              subTitle: item.dateText,
              trailing: item.amount,
            ),
          ),
        ],
      ),
    );
  }
}
