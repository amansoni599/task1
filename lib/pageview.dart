import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final List<String> tabs;
  final TabController tabController;

  const CustomTabBar({
    Key? key,
    required this.tabs,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
  elevation: 0, // Removes shadow and default bottom line
  child: Center(
    child: Container(
      width: 300,
      child: TabBar(
        controller: tabController,
        dividerColor: Colors.transparent,
        indicatorColor: Color(0xFFFA4646), 
        labelColor: Color(0xFFFA4646),
        unselectedLabelColor: Colors.black,
        tabs: tabs.map((title) => Tab(text: title)).toList(),
      ),
    ),
  ),
);
  }
}