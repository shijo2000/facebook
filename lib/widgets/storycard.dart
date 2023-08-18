import 'package:facebook/widgets/CircularButtons.dart';
import 'package:flutter/material.dart';
import 'package:facebook/assets.dart';

import 'avatar.dart';

class StoryCard extends StatelessWidget {
  const StoryCard(
      {super.key,
      required this.labelText,
      required this.story,
      required this.avatar,
      this.createStoryStatus = false,
      this.displayboder = false});

  final String labelText;
  final String story;
  final String avatar;
  final bool createStoryStatus;
  final bool displayboder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(
        left: 5,
        right: 5,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(story),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child: createStoryStatus
                ? CircularButton(
                    buttonIcon: Icons.add,
                    buttonAction: () {
                      print("Create new story?");
                    },
                    iconcolor: Colors.blue,
                  )
                : Avatar(
                    displayimage: avatar,
                    displayStatus: false,
                    displayboder: displayboder,
              width: 35,height: 35,
                  ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              labelText != null ? labelText : "N/A",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
