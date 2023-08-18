import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar(
      {super.key,
      required this.displayimage,
      required this.displayStatus,
      this.displayboder = false, this.width = 50,  this.height = 50});

  final String displayimage;
  final bool displayStatus;
  final bool displayboder;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    Widget statusIndicator;
    if (displayStatus == true) {
      statusIndicator = Positioned(
        bottom: 0,
        right: 1,
        child: Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
              color: Colors.greenAccent,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2)),
        ),
      );
    } else {
      statusIndicator = SizedBox();
    }
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayboder ? Border.all(
                color: Colors.blueAccent,width: 3
            ) : Border(),
          ),
          padding: EdgeInsets.only(left: 4, right: 4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(2000),
            child: Image.asset(
              displayimage,
              width: width,
              height: height,
            ),
          ),
        ),
        statusIndicator,
      ],
    );
  }
}
