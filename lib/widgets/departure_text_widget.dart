import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../app_layout.dart';
import '../utilitis/styles.dart';

class DepartureTextWidget extends StatelessWidget {
  final IconData icon;

  final String text;

  const DepartureTextWidget({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppLayout.getWidth(10),
          ),
          color: Colors.white),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xffbfc2df),
          ),
          Gap(AppLayout.getWidth(15)),
          Text(
            text,
            style: Styles.kTextStyle,
          )
        ],
      ),
    );
  }
}
