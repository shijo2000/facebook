import 'package:facebook/assets.dart';
import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/widgets/postCard.dart';
import 'package:facebook/sections/statusSection.dart';
import 'package:facebook/sections/storySection.dart';
import 'package:facebook/sections/suggestionSection.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/CircularButtons.dart';
import 'package:facebook/sections/roomSection.dart';

import 'widgets/headerButton.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget thindivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "facebook",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          CircularButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print("search");
              }),
          CircularButton(
              buttonIcon: Icons.chat,
              buttonAction: () {
                print("messenger");
              })
        ],
      ),
      body: ListView(
        children: [
          StatusSection(),
          thindivider,
          HeaderButtonSection(
            buttonOne: headerbutton(
                buttonAction: () {
                  print("Go live");
                },
                buttoncolor: Colors.red,
                buttonIcon: Icons.video_call,
                buttonText: "Live"),
            buttonTwo: headerbutton(
                buttonText: "Photo",
                buttonIcon: Icons.photo_library,
                buttonAction: () {
                  print("Take photo!");
                },
                buttoncolor: Colors.green),
            buttonThree: headerbutton(
                buttonText: "Room",
                buttonIcon: Icons.video_call,
                buttonAction: () {
                  print("Create room");
                },
                buttoncolor: Colors.purple),
          ),
          thickDivider,
          RoomSection(),
          thickDivider,
          StorySection(),
          thickDivider,
          PostCard(
            avatar: mohanlal,
            name: "Mohanlal",
            publishedAt: '5h',
            postTitle: 'Happy Happy',
            postImage: mohlal,
            showBlueTick: true,
            likeCount: "10k",
            shareCount: "1k",
            commentCount: "1k",
          ),
          thickDivider,
          PostCard(
            avatar: danush,
            name: "Dhanush",
            publishedAt: '10h',
            postTitle: '',
            postImage: dha,
            showBlueTick: true,
            likeCount: "15k",
            shareCount: "3k",
            commentCount: "4k",
          ),
          thickDivider,
          SuggestionSection(),
          thickDivider,
          PostCard(
            avatar: fahad,
            name: "Fahad Fasil",
            publishedAt: '1 day ago',
            postTitle: '',
            postImage: fahadd,
            showBlueTick: true,
            likeCount: "10k",
            shareCount: "3k",
            commentCount: "2k",
          ),
          thickDivider,
          PostCard(
            avatar: rajnikanth,
            name: "Rajnikanth",
            publishedAt: '3 days ago',
            postTitle: '',
            postImage: rajni,
            showBlueTick: true,
            likeCount: "100k",
            shareCount: "30k",
            commentCount: "20k",
          ),
        ],
      ),
    );
  }
}
