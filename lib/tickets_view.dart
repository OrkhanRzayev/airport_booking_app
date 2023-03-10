import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:training_app/app_layout.dart';
import 'package:training_app/utilitis/styles.dart';
import 'package:training_app/widgets/layout_builder_widget.dart';
import 'package:training_app/widgets/thick_container.dart';

class TicketsView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketsView({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
        width: size.width * 0.85,
        height: AppLayout.getHeight(187),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color:
                      isColor == null ? const Color(0xff526799) : Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppLayout.getHeight(21)),
                    topRight: Radius.circular(AppLayout.getHeight(21)),
                  ),
                ),
                padding: EdgeInsets.all(AppLayout.getHeight(16)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          ticket['from']['code'],
                          style: isColor == null
                              ? Styles.kHeadLineStyleSmall
                                  .copyWith(color: Colors.white)
                              : Styles.kHeadLineStyleSmall
                                  .copyWith(color: Colors.black),
                        ),
                        Expanded(child: Container()),
                        const ThickContainer(
                          isColor: true,
                        ),
                        Expanded(
                            child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      ((index) => SizedBox(
                                            width: 3,
                                            height: 1,
                                            child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                    color: isColor == null
                                                        ? Colors.white
                                                        : Colors
                                                            .grey.shade300)),
                                          )),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.airplanemode_active,
                                  color: isColor == null
                                      ? Colors.white
                                      : const Color(0xff8accf7),
                                ),
                              ),
                            ),
                          ],
                        )),
                        const ThickContainer(
                          isColor: true,
                        ),
                        Expanded(child: Container()),
                        Text(
                          ticket['to']['code'],
                          style: isColor == null
                              ? Styles.kHeadLineStyleSmall
                                  .copyWith(color: Colors.white)
                              : Styles.kHeadLineStyleSmall
                                  .copyWith(color: Colors.black),
                        )
                      ],
                    ),
                    const Gap(5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          ticket['from']['name'],
                          style: isColor == null
                              ? Styles.kHeadLineStyleSmallest
                                  .copyWith(color: Colors.white)
                              : Styles.kHeadLineStyleSmallest,
                        ),
                        Text(
                          ticket['flying_time'],
                          style: isColor == null
                              ? Styles.kHeadLineStyleSmallest
                                  .copyWith(color: Colors.white)
                              : Styles.kHeadLineStyleSmall
                                  .copyWith(color: Colors.black),
                        ),
                        Text(
                          ticket['to']['name'],
                          style: isColor == null
                              ? Styles.kHeadLineStyleSmallest
                                  .copyWith(color: Colors.white)
                              : Styles.kHeadLineStyleSmallest,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                color: isColor == null ? Styles.kOrangeColor : Colors.white,
                child: Row(
                  children: [
                    SizedBox(
                      height: AppLayout.getHeight(20),
                      width: AppLayout.getWidth(10),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: isColor == null
                              ? Colors.grey.shade300
                              : Colors.white,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.all(AppLayout.getHeight(17)),
                      child: const LayoutBuilderWidget(
                        sections: 15,
                        isColor: true,
                      ),
                    )),
                    SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: isColor == null
                              ? Colors.grey.shade300
                              : Colors.white,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: isColor == null ? Styles.kOrangeColor : Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                    bottomRight: Radius.circular(isColor == null ? 21 : 0),
                  ),
                ),
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ticket['date'],
                              style: isColor == null
                                  ? Styles.kHeadLineStyleSmall
                                      .copyWith(color: Colors.white)
                                  : Styles.kHeadLineStyleSmall
                                      .copyWith(color: Colors.black),
                            ),
                            const Gap(5),
                            Text(
                              'Date',
                              style: isColor == null
                                  ? Styles.kHeadLineStyleSmall
                                      .copyWith(color: Colors.white)
                                  : Styles.kHeadLineStyleSmallest,
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              ticket['departure_time'],
                              style: isColor == null
                                  ? Styles.kHeadLineStyleSmall
                                      .copyWith(color: Colors.white)
                                  : Styles.kHeadLineStyleSmall
                                      .copyWith(color: Colors.black),
                            ),
                            const Gap(5),
                            Text(
                              'Departure Time',
                              style: isColor == null
                                  ? Styles.kHeadLineStyleSmall
                                      .copyWith(color: Colors.white)
                                  : Styles.kHeadLineStyleSmallest,
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              ticket['number'].toString(),
                              style: isColor == null
                                  ? Styles.kHeadLineStyleSmall
                                      .copyWith(color: Colors.white)
                                  : Styles.kHeadLineStyleSmall
                                      .copyWith(color: Colors.black),
                            ),
                            const Gap(5),
                            Text(
                              'Number',
                              style: isColor == null
                                  ? Styles.kHeadLineStyleSmall
                                      .copyWith(color: Colors.white)
                                  : Styles.kHeadLineStyleSmallest,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
