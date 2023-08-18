import 'package:flutter/material.dart';
import 'package:facebook/assets.dart';

import '../widgets/avatar.dart';
class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(displayimage: danush,displayStatus: false,),
      title: TextField(decoration: InputDecoration(
        hintText: "what's on your mind?",
        hintStyle: TextStyle(color: Colors.black),
        enabledBorder: InputBorder.none,
      ),),
    );
  }
}
