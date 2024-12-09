import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampark_chat_app_24/Config/Images.dart';
import 'package:sampark_chat_app_24/Pages/Home/Widget/ChatTile.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        InkWell(
          onTap: () {
            Get.toNamed("/chatPage");
          },
          child: ChatTile(
            imageUrl: AssetsImage.girlPic,
            name: "Saas Kumari",
            lastChat: "Bad me bat karte hai",
            lastTime: "09:33 PM",
          ),
        ),
        ChatTile(
          imageUrl: AssetsImage.boyPic,
          name: "Nitish Kumar",
          lastChat: "Abhi bat karte hai",
          lastTime: "09:33 PM",
        ),
        ChatTile(
          imageUrl: AssetsImage.girlPic,
          name: "Saas Kumari",
          lastChat: "Bad me bat karte hai",
          lastTime: "09:33 PM",
        ),
        ChatTile(
          imageUrl: AssetsImage.boyPic,
          name: "Nitish Kumar",
          lastChat: "Abhi bat karte hai",
          lastTime: "09:33 PM",
        ),
        ChatTile(
          imageUrl: AssetsImage.girlPic,
          name: "Saas Kumari",
          lastChat: "Bad me bat karte hai",
          lastTime: "09:33 PM",
        ),
        ChatTile(
          imageUrl: AssetsImage.boyPic,
          name: "Nitish Kumar",
          lastChat: "Abhi bat karte hai",
          lastTime: "09:33 PM",
        ),
        ChatTile(
          imageUrl: AssetsImage.girlPic,
          name: "Saas Kumari",
          lastChat: "Bad me bat karte hai",
          lastTime: "09:33 PM",
        ),
        ChatTile(
          imageUrl: AssetsImage.boyPic,
          name: "Nitish Kumar",
          lastChat: "Abhi bat karte hai",
          lastTime: "09:33 PM",
        ),
      ],
    );
  }
}
