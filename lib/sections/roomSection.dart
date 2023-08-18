import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createroombutton(),
          Avatar(displayimage: danush,displayStatus: true,),
          Avatar(displayimage: alluarjun,displayStatus: true,),
          Avatar(displayimage: fahad,displayStatus: true,),
          Avatar(displayimage: jayaram,displayStatus: true,),
          Avatar(displayimage: mammooty,displayStatus: true,),
          Avatar(displayimage: mohanlal,displayStatus: true,),
          Avatar(displayimage: pranav,displayStatus: true,),
          Avatar(displayimage: rajnikanth,displayStatus: true,),
          Avatar(displayimage: sureshgopi,displayStatus: true,),


        ],
      ),
    );
  }
  Widget createroombutton(){
    return Container(padding: EdgeInsets.only(left: 5,right: 5),
      child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
                side: BorderSide(width: 1.5,color: Colors.blue)
            )
        ),
        onPressed: () {
          print("Create a chat room!");
        },
        label: Text(
          "Create  \nRoom",
        ),
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
      ),
    );
  }
}
