import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sampark_chat_app_24/Config/Images.dart';
import 'package:sampark_chat_app_24/Pages/Chat/Widgets/ChatBubble.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset(AssetsImage.boyPic),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nitish Kumar",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              "Online",
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.phone,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.video_call,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
        child: Row(
          children: [
            Container(
              width: 30,
              height: 30,
              child: SvgPicture.asset(
                AssetsImage.chatMicSvg,
                width: 25,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  filled: false,
                  hintText: "Type message...",
                ),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              width: 30,
              height: 30,
              child: SvgPicture.asset(
                AssetsImage.chatGallarySvg,
                width: 25,
              ),
            ),
            const SizedBox(width: 10),
            Container(
              width: 30,
              height: 30,
              child: SvgPicture.asset(
                AssetsImage.chatSendSvg,
                width: 25,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: const [
              ChatBubble(
                message: "Hello How are you ?",
                imageUrl: "",
                isComming: true,
                status: "read",
                time: "10:10 AM",
              ),
              ChatBubble(
                message: "Hello How are you ?",
                imageUrl: "",
                isComming: false,
                status: "read",
                time: "10:10 AM",
              ),
              ChatBubble(
                message: "Hello How are you ?",
                imageUrl:
                    "https://miro.medium.com/v2/resize:fit:1400/1*-mOO444aE0ysjnJofbxBkQ.png",
                isComming: false,
                status: "read",
                time: "10:10 AM",
              ),
              ChatBubble(
                message: "Hello How are you ?",
                imageUrl: "",
                isComming: true,
                status: "read",
                time: "10:10 AM",
              ),
              ChatBubble(
                message: "Hello How are you ?",
                imageUrl:
                    "https://miro.medium.com/v2/resize:fit:1400/1*-mOO444aE0ysjnJofbxBkQ.png",
                isComming: true,
                status: "read",
                time: "10:10 AM",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
