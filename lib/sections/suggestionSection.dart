import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/suggestionCard.dart';

class SuggestionSection extends StatelessWidget {
  const SuggestionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: [
          ListTile(
            title: Text("People you may know"),
            trailing: IconButton(
              onPressed: () {
                print("More clicked!!");
              },
              icon: Icon(
                Icons.more_horiz,
                color: Colors.grey[700],
              ),
            ),
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                suggestionCard(
                    avatar: sureshgopi,
                    name: "Sureshgopi",
                    mutualFriends: "5 Mutual Friends",
                    addFriend: () {
                      print("Request Friendship");
                    },
                    removeFriend: () {
                      print("Remove this person");
                    }),
                suggestionCard(
                    avatar: pranav,
                    name: "Pranav Mohanlal",
                    mutualFriends: "7 Mutual Friends",
                    addFriend: () {
                      print("Request Friendship");
                    },
                    removeFriend: () {
                      print("Remove this person");
                    }),
                suggestionCard(
                    avatar: jayaram,
                    name: "Jayaram",
                    mutualFriends: "3 Mutual Friends",
                    addFriend: () {
                      print("Request Friendship");
                    },
                    removeFriend: () {
                      print("Remove this person");
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
