import 'package:facebook/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class suggestionCard extends StatelessWidget {
  const suggestionCard(
      {super.key,
      required this.avatar,
      required this.name,
      required this.mutualFriends,
      required this.addFriend,
      required this.removeFriend});

  final String avatar;
  final String name;
  final String mutualFriends;
  final void Function() addFriend;
  final void Function() removeFriend;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: [
          suggestionImage(),
          suggestionDetails(),
        ],
      ),
    );
  }

  Widget blankButton({
    required void Function() buttonAction,
    required String buttonText,
    required Color buttonColor,
    required Color buttonTextColor,
  }) {
    return Container(
      color: buttonColor,
      child: TextButton(
          onPressed: buttonAction,
          style: TextButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          child: Text(
            buttonText,
            style: TextStyle(color: buttonTextColor),
          )),
    );
  }

  Widget iconButton({
    required void Function() buttonAction,
    required IconData buttonIcon,
    required Color buttonColor,
    required Color buttonTextColor,
    required Color buttonIconColor,
    required String buttonText,
  }) {
    return Container(
      color: buttonColor,
      child: TextButton.icon(
        onPressed: buttonAction,
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        icon: Icon(
          buttonIcon,
          color: buttonIconColor,
        ),
        label: Text(
          buttonText,
          style: TextStyle(color: buttonTextColor),
        ),
      ),
    );
  }

  Widget suggestionDetails() {
    return Positioned(
        bottom: 0,
        right: 0,
        left: 0,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(
                color: Colors.grey,
                width: 1,
              )),
          height: 140,
          child: Column(
            children: [
              ListTile(
                title: Text(name!= null ?name:""),
                subtitle: Text(mutualFriends != null ? mutualFriends: ""),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    iconButton(
                      buttonAction: addFriend,
                      buttonIcon: Icons.account_box,
                      buttonColor: Colors.blue,
                      buttonTextColor: Colors.white,
                      buttonIconColor: Colors.white,
                      buttonText: "Add friend",
                    ),
                    blankButton(
                        buttonAction: removeFriend,
                        buttonText: "Remove",
                        buttonColor: Colors.grey,
                        buttonTextColor: Colors.black)
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget suggestionImage() {
    return Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: avatar!= null ? Image.asset(
              avatar,
              fit: BoxFit.cover,
            ):SizedBox()));
  }
}
