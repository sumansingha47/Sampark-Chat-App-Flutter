import 'package:flutter/material.dart';

myTabBar(TabController tabController, BuildContext context) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(60),
    child: TabBar(
      controller: tabController,
      dividerColor: Colors.transparent,
      indicatorWeight: 5,
      indicatorSize: TabBarIndicatorSize.label,
      labelColor: const Color.fromARGB(255, 6, 134, 238),
      labelStyle: Theme.of(context).textTheme.bodyLarge,
      unselectedLabelStyle: Theme.of(context).textTheme.labelLarge,
      tabs: const [
        Text("Chats"),
        Text("Groups"),
        Text("Calls"),
      ],
    ),
  );
}
