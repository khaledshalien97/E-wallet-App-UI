import 'package:e_wallet_app/model/transaction_history_model.dart';
import 'package:e_wallet_app/screens/common_widgets/common_app_bar.dart';
import 'package:e_wallet_app/screens/common_widgets/common_list_tile_widget.dart';
import 'package:e_wallet_app/screens/common_widgets/common_text_widget.dart';
import 'package:e_wallet_app/theme/app_theme.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  final List<double> values = [10, 18, 22, 20, 28, 23, 14]; // Jan..Jul
  int touchedIndex = 4; // highlight "Mei" by default

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(
        title: "Report",
        viewleading: true,
        viewAction: false,

        onPressed: () {
          Navigator.pop(context);
        },
      ),

      body: SingleChildScrollView(
        padding: EdgeInsetsGeometry.fromLTRB(15, 40, 15, 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ===== Balance + Monthly =====
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    commonTextWidget(
                      text: "Balance",
                      googleFonts: GoogleFonts.poppins,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppTheme.mediumGray,
                    ),
                    SizedBox(height: 6),
                    commonTextWidget(
                      text: "\$34,378,44",
                      googleFonts: GoogleFonts.montserrat,
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      color: AppTheme.textWhite,
                    ),
                  ],
                ),
                Row(
                  children: [
                    commonTextWidget(
                      text: "Monthly",
                      googleFonts: GoogleFonts.poppins,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppTheme.mediumGray,
                    ),

                    SizedBox(width: 4),
                    Icon(Icons.keyboard_arrow_down, color: Colors.white70),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 30),

            // ===== Chart =====
            SizedBox(height: 270, child: LineChart(_chartData())),
            const SizedBox(height: 30),
            // ===== Transaction History =====
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                commonTextWidget(
                  text: "Transaction History",
                  googleFonts: GoogleFonts.montserrat,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: AppTheme.textWhite,
                ),
                Row(
                  children: [
                    commonTextWidget(
                      text: "Monthly",
                      googleFonts: GoogleFonts.poppins,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppTheme.mediumGray,
                    ),

                    SizedBox(width: 4),
                    Icon(Icons.keyboard_arrow_down, color: Colors.white70),
                  ],
                ),
              ],
            ),

            SizedBox(
              height: 300,
              child: ListView.builder(
                itemCount: TransactionHistoryDataModel.transactionData.length,
                itemBuilder: (context, index) {
                  var data = TransactionHistoryDataModel.transactionData[index];
                  return commonListTileWidget(
                    index: index,
                    title: data.name,
                    subTitle: data.date,
                    trailing: data.amount,
                  );
                  ;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  LineChartData _chartData() {
    final green = const Color(0xff21D07A);

    final spots = List.generate(
      values.length,
      (i) => FlSpot(i.toDouble(), values[i]),
    );

    return LineChartData(
      minX: 0,
      maxX: values.length - 1,
      minY: 0,
      maxY: 32,

      gridData: FlGridData(show: false),
      borderData: FlBorderData(show: false),

      titlesData: FlTitlesData(
        topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            reservedSize: 28,
            getTitlesWidget: (value, meta) {
              final i = value.toInt();
              const months = ["Jan", "Feb", "Mar", "Apr", "Mei", "Jun", "Jul"];
              if (i < 0 || i >= months.length) return const SizedBox.shrink();

              // Hide Feb to match screenshot spacing vibe
              if (months[i] == "Feb") return const SizedBox.shrink();

              return Text(
                months[i],
                style: const TextStyle(color: Colors.white70, fontSize: 12),
              );
            },
          ),
        ),
      ),

      lineTouchData: LineTouchData(
        handleBuiltInTouches: true,

        touchCallback: (event, response) {
          final spot = response?.lineBarSpots?.first;
          if (spot != null) {
            setState(() => touchedIndex = spot.x.toInt());
          }
        },

        touchTooltipData: LineTouchTooltipData(
          tooltipPadding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 6,
          ),
          tooltipMargin: 8,
          getTooltipColor: (spot) => green,
          tooltipBorder: const BorderSide(color: Color(0xff21D07A), width: 1),
          fitInsideHorizontally: true,
          fitInsideVertically: true,
          getTooltipItems: (touchedSpots) {
            return touchedSpots.map((spot) {
              return LineTooltipItem(
                "+ \$${spot.y.toStringAsFixed(2)}",
                const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              );
            }).toList();
          },
        ),

        getTouchedSpotIndicator: (barData, indexes) {
          return indexes.map((i) {
            return TouchedSpotIndicatorData(
              FlLine(
                color: Colors.white24,
                strokeWidth: 1,
                dashArray: [4, 6], // dashed vertical line
              ),
              FlDotData(
                show: true,
                getDotPainter: (spot, percent, bar, index) {
                  return FlDotCirclePainter(
                    radius: 4.5,
                    color: green,
                    strokeWidth: 2,
                    strokeColor: Colors.black,
                  );
                },
              ),
            );
          }).toList();
        },
      ),

      lineBarsData: [
        LineChartBarData(
          spots: spots,
          isCurved: false, // sharp/angular like screenshot
          barWidth: 2,
          color: green,
          dotData: FlDotData(show: false),

          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [green.withOpacity(0.35), Colors.transparent],
            ),
          ),
        ),
      ],
    );
  }
}
