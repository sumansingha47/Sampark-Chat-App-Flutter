import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sampark_chat_app_24/Config/Images.dart';
import 'package:sampark_chat_app_24/Config/Strings.dart';
import 'package:sampark_chat_app_24/Pages/Home/Widget/ChatList.dart';
import 'package:sampark_chat_app_24/Pages/Home/Widget/TabBar.dart';
import 'package:sampark_chat_app_24/Pages/ProfilePage/ProfilePage.dart';

import '../../Controller/ProfileController.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    ProfileController profileController = Get.put(ProfileController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: Text(
          AppString.appName,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            AssetsImage.appIconSVG,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {
              // Get.toNamed("/profilePage");
              Get.to(() => const ProfilePage());
            },
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
        bottom: myTabBar(tabController, context),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Icon(
          Icons.add,
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: TabBarView(
          controller: tabController,
          children: [
            ChatList(),
            ListView(
              children: [
                ListTile(
                  title: Text("Name Nitish"),
                ),
              ],
            ),
            ListView(
              children: [
                ListTile(
                  title: Text("Name Nitish"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
