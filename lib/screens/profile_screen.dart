import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:training_app/app_layout.dart';
import 'package:training_app/utilitis/styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.kBgColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: AppLayout.getHeight(85),
                  width: AppLayout.getWidth(85),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/img_1.png')),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                const Gap(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Book Tickets',
                      style: Styles.kHeadLineStyle,
                    ),
                    Text(
                      'New-York',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500),
                    ),
                    const Gap(10),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 3, vertical: 3),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(3),
                            decoration: const BoxDecoration(
                                color: Colors.blue, shape: BoxShape.circle),
                            child: const Icon(
                              Icons.shield,
                              size: 15,
                              color: Colors.white,
                            ),
                          ),
                          const Gap(5),
                          const Text(
                            textAlign: TextAlign.center,
                            'Premium Status',
                            style: TextStyle(
                                color: Color(0xff526799),
                                fontWeight: FontWeight.w600),
                          ),
                          const Gap(5)
                        ],
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Edit',
                        style: Styles.kTextStyle.copyWith(
                            color: Styles.kPrimaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
            const Gap(40),
            Divider(
              color: Colors.grey.shade300,
            ),
            const Gap(8),
            Stack(
              children: [
                Container(
                  height: 90,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Styles.kPrimaryColor,
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 18,
                        color: const Color(0xff264cd2),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.lightbulb_rounded,
                          color: Styles.kPrimaryColor,
                          size: 27,
                        ),
                      ),
                      const Gap(10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'You\'ve got a new award',
                            style: Styles.kHeadLineStyleMedium.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            'You have 25 flights this year',
                            style: Styles.kHeadLineStyleMedium.copyWith(
                                color: Colors.white.withOpacity(0.7),
                                fontSize: 15),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            const Gap(20),
            Text(
              'Accumulated Miles',
              style: Styles.kHeadLineStyleMedium,
            ),
            const Gap(30),
            Container(
              child: Column(
                children: [
                  Text(
                    '192854',
                    style: Styles.kHeadLineStyle.copyWith(fontSize: 45),
                  ),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Miles accrued',
                        style: Styles.kHeadLineStyleSmall,
                      ),
                      Text(
                        '23 May 2021',
                        style: Styles.kHeadLineStyleSmall,
                      )
                    ],
                  ),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '23 042',
                        style: Styles.kHeadLineStyleSmall
                            .copyWith(color: Colors.black),
                      ),
                      Text(
                        'Airline CO',
                        style: Styles.kHeadLineStyleSmall
                            .copyWith(color: Colors.black),
                      )
                    ],
                  ),
                  const Gap(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Miles',
                        style: Styles.kHeadLineStyleSmall,
                      ),
                      Text(
                        'Received from',
                        style: Styles.kHeadLineStyleSmall,
                      )
                    ],
                  ),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '24',
                        style: Styles.kHeadLineStyleSmall
                            .copyWith(color: Colors.black),
                      ),
                      Text(
                        'Mc Donalds',
                        style: Styles.kHeadLineStyleSmall
                            .copyWith(color: Colors.black),
                      )
                    ],
                  ),
                  const Gap(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Miles',
                        style: Styles.kHeadLineStyleSmall,
                      ),
                      Text(
                        'Received from',
                        style: Styles.kHeadLineStyleSmall,
                      )
                    ],
                  ),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '52 340',
                        style: Styles.kHeadLineStyleSmall
                            .copyWith(color: Colors.black),
                      ),
                      Text(
                        'Exuma',
                        style: Styles.kHeadLineStyleSmall
                            .copyWith(color: Colors.black),
                      )
                    ],
                  ),
                  const Gap(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Miles',
                        style: Styles.kHeadLineStyleSmall,
                      ),
                      Text(
                        'Received from',
                        style: Styles.kHeadLineStyleSmall,
                      )
                    ],
                  ),
                  const Gap(20),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'How to get more miles',
                      style: Styles.kHeadLineStyleSmall
                          .copyWith(color: Colors.indigo.shade400),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
