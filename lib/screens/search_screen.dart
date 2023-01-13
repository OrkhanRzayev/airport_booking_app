import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:training_app/app_layout.dart';
import 'package:training_app/utilitis/styles.dart';
import 'package:training_app/widgets/departure_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.kBgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(16),
          vertical: AppLayout.getHeight(16),
        ),
        children: [
          Gap(
            AppLayout.getHeight(40),
          ),
          Text(
            'What are\nyou lookin for?',
            style: Styles.kHeadLineStyle.copyWith(fontSize: 35),
            textAlign: TextAlign.start,
          ),
          Gap(
            AppLayout.getHeight(20),
          ),
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: size.width * 0.44,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(50),
                      ),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        'Airline Tickets',
                        style: Styles.kHeadLineStyleSmallest
                            .copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.44,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(50),
                        ),
                        color: Color(0xfff4f6fd)),
                    child: Center(
                      child: Text(
                        'Hotels',
                        style: Styles.kHeadLineStyleSmallest
                            .copyWith(color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          const DepartureTextWidget(
              text: 'Departure', icon: Icons.flight_takeoff_rounded),
          Gap(AppLayout.getHeight(20)),
          const DepartureTextWidget(
              text: 'Arrival', icon: Icons.flight_land_rounded),
          const Gap(25),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  AppLayout.getWidth(10),
                ),
                color: const Color(0xd91130ce)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Find Tickets',
                  style:
                      Styles.kHeadLineStyleSmall.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Upcoming Flights',
                style: Styles.kHeadLineStyleMedium,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'View All',
                  style: Styles.kHeadLineStyleSmallest,
                ),
              )
            ],
          ),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 2,
                        spreadRadius: 3,
                      ),
                    ]),
                height: AppLayout.getHeight(410),
                width: size.width * 0.40,
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(12),
                        ),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/sit.jpg'),
                        ),
                      ),
                    ),
                    Gap(AppLayout.getHeight(25)),
                    Text(
                      '50% discount for this flight. Hurry Up to buy a tickets to Venice!',
                      style: Styles.kHeadLineStyleMedium,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: AppLayout.getHeight(180),
                        width: size.width * 0.43,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 2,
                              spreadRadius: 3,
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xff3ab8b8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount for survey',
                              style: Styles.kHeadLineStyle.copyWith(
                                color: Colors.white,
                              ),
                            ),
                            const Gap(10),
                            Text(
                              'Take the survey about our services and get a discount',
                              textAlign: TextAlign.start,
                              style: Styles.kHeadLineStyleSmall
                                  .copyWith(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 18, color: const Color(0xff189999)),
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(15),
                  Container(
                    padding: const EdgeInsets.all(15),
                    height: AppLayout.getHeight(210),
                    width: size.width * 0.44,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 2,
                          spreadRadius: 3,
                        )
                      ],
                      borderRadius: BorderRadius.circular(
                        AppLayout.getHeight(18),
                      ),
                      color: const Color(0xffec6545),
                    ),
                    child: Column(
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          'Take Love',
                          style: Styles.kHeadLineStyleMedium
                              .copyWith(color: Colors.white),
                        ),
                        const Gap(15),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                            text: '😍',
                            style: TextStyle(fontSize: 31),
                          ),
                          TextSpan(
                            text: '🥰',
                            style: TextStyle(fontSize: 41),
                          ),
                          TextSpan(
                            text: '😘',
                            style: TextStyle(fontSize: 31),
                          ),
                        ]))
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
