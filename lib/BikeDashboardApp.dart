import 'package:flutter/material.dart';
import 'package:flutter_application_1/batteryVoltageCard.dart';
import 'package:flutter_application_1/bikeCard.dart';
import 'package:flutter_application_1/faultCard.dart';
import 'package:flutter_application_1/pageview.dart';
import 'package:flutter_application_1/smallCard.dart';
import 'package:flutter_application_1/textButton.dart';

class BikeDashBoardApp extends StatefulWidget {
  const BikeDashBoardApp({super.key});

  @override
  State<BikeDashBoardApp> createState() => _BikeDashBoardAppState();
}

class _BikeDashBoardAppState extends State<BikeDashBoardApp>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Image.asset("assets/logo.png"),
          title: CustomTabBar(
            tabs: const ["Dashboard", "Feedback", "Settings"],
            tabController: _tabController,
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Container(
                    color: const Color(0xFF778290),
                    child: LayoutBuilder(builder: (context, size) {
                      if (size.maxWidth > 900) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const BikeCard(),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        BatteryVoltageCard(),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        SmallCard(),
                                      ],
                                    )
                                  ],
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const FaultCard(),
                                  const Spacer(),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: CustomButton(
                                      text: 'Start Repair',
                                      onPressed: () {},
                                    ),
                                  ),
                                  const Spacer(),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                          ],
                        );
                      } else {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ListView(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              const BikeCard(),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  BatteryVoltageCard(
                                    width:
                                        MediaQuery.sizeOf(context).width / 2 -
                                            20,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  SmallCard(
                                    width:
                                        MediaQuery.sizeOf(context).width / 2 -
                                            20,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const FaultCard(),
                              const SizedBox(
                                height: 20,
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: CustomButton(
                                  text: 'Start Repair',
                                  onPressed: () {},
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                        );
                      }
                    }),
                  ),
                  const Center(child: Text("Feedback Screen")),
                  const Center(child: Text("Settings Screen")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
