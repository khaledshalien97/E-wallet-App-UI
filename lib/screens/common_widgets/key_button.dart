import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KeyButton extends StatelessWidget {
  final String? label;
  final IconData? icon;
  final VoidCallback? onTap;
  const KeyButton({super.key, this.label, this.icon, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 110,
        height: 70,
        decoration: BoxDecoration(
          color: const Color(0xFF141414),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child: icon != null
              ? Icon(icon, color: Colors.white, size: 28)
              : Text(
                  label ?? '',
                  style: GoogleFonts.poppins(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
        ),
      ),
    );
  }
}
