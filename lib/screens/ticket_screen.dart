import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:training_app/app_layout.dart';
import 'package:training_app/tickets_view.dart';
import 'package:training_app/utilitis/app_info_list.dart';
import 'package:training_app/utilitis/styles.dart';
import 'package:training_app/widgets/layout_builder_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.kBgColor,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.all(15),
            children: [
              const Gap(40),
              Text(
                'Tickets',
                style: Styles.kHeadLineStyle,
              ),
              const Gap(15),
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
                            'Upcoming',
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
                            'Previous',
                            style: Styles.kHeadLineStyleSmallest
                                .copyWith(color: Colors.black),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Gap(20),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: TicketsView(
                  ticket: ticketList[0],
                  isColor: false,
                ),
              ),
              const Gap(1),
              Container(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Flutter DB',
                              style: Styles.kHeadLineStyleSmall
                                  .copyWith(color: Colors.black),
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text(
                              'Passenger',
                              style: Styles.kHeadLineStyleSmallest,
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '5221 478566',
                              style: Styles.kHeadLineStyleSmall
                                  .copyWith(color: Colors.black),
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text(
                              'Passport',
                              style: Styles.kHeadLineStyleSmallest,
                            )
                          ],
                        )
                      ],
                    ),
                    const Gap(20),
                    const LayoutBuilderWidget(
                      sections: 15,
                      isColor: false,
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '0055 444 77147',
                              style: Styles.kHeadLineStyleSmall
                                  .copyWith(color: Colors.black),
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text(
                              'Number of E-ticket',
                              style: Styles.kHeadLineStyleSmallest,
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'B2SG28',
                              style: Styles.kHeadLineStyleSmall
                                  .copyWith(color: Colors.black),
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text(
                              'Booking Code',
                              style: Styles.kHeadLineStyleSmallest,
                            )
                          ],
                        )
                      ],
                    ),
                    const Gap(20),
                    const LayoutBuilderWidget(
                      sections: 15,
                      isColor: false,
                    ),
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/visa.png',
                                  scale: 12,
                                ),
                                Text(
                                  ' *** 2462',
                                  style: Styles.kHeadLineStyleSmall
                                      .copyWith(color: Colors.black),
                                )
                              ],
                            ),
                            const Gap(5),
                            Text(
                              'Payment Method',
                              style: Styles.kHeadLineStyleSmallest,
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '${249.99}',
                                  style: Styles.kHeadLineStyleSmall
                                      .copyWith(color: Colors.black),
                                )
                              ],
                            ),
                            const Gap(5),
                            Text(
                              'Price',
                              style: Styles.kHeadLineStyleSmallest,
                            )
                          ],
                        )
                      ],
                    ),
                    const Gap(20),
                    const LayoutBuilderWidget(
                      sections: 15,
                      isColor: false,
                    ),
                    const Gap(20)
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                padding: const EdgeInsets.only(bottom: 15, top: 15),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(21), //TODO from here
                    bottomLeft: Radius.circular(21),
                  ),
                ),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: BarcodeWidget(
                      data: 'https://github.com/martinovovo',
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: Styles.kTextColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              const Gap(20),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: TicketsView(
                  ticket: ticketList[0],
                  isColor: null,
                ),
              )
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(30),
            top: AppLayout.getHeight(300),
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Styles.kTextColor,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.kTextColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(30),
            top: AppLayout.getHeight(300),
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Styles.kTextColor,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.kTextColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
