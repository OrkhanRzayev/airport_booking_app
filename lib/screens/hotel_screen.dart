import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:training_app/app_layout.dart';
import 'package:training_app/utilitis/styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: const EdgeInsets.all(15),
      width: size.width * 0.6,
      height: AppLayout.getHeight(350),
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Styles.kPrimaryColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, blurRadius: 20, spreadRadius: 5)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.kPrimaryColor,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/${hotel['image']}')),
            ),
          ),
          const Gap(10),
          Text(
            hotel['place'],
            style: Styles.kHeadLineStyle.copyWith(color: Styles.kGreyColor),
          ),
          const Gap(5),
          Text(
            hotel['destination'],
            style: Styles.kHeadLineStyleSmall.copyWith(color: Colors.white),
          ),
          const Gap(10),
          Text(
            '\$${hotel['price']}/night',
            style: Styles.kHeadLineStyle.copyWith(color: Styles.kGreyColor),
          )
        ],
      ),
    );
  }
}
