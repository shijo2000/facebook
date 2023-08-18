import 'package:facebook/assets.dart';
import 'package:facebook/widgets/storycard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add to story",
            avatar: danush,
            story: danush,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: "Fahad Fasil",
            avatar: fahad,
            story: fahadd,
            displayboder: true,
          ),
          StoryCard(
            labelText: "Allu Arjun",
            avatar: alluarjun,
            story: allu,
            displayboder: true,
          ),
          StoryCard(
            labelText: "Mammooty",
            avatar: mammooty,
            story: mamoty,
            displayboder: true,
          ),
          StoryCard(
            labelText: "Mohanlal",
            avatar: mohanlal,
            story: mohlal,
            displayboder: true,
          ),
          StoryCard(
            labelText: "Rajnikanth",
            avatar: rajnikanth,
            story: rajni,
            displayboder: true,
          ),
          StoryCard(
            labelText: "Sureshgopi",
            avatar: sureshgopi,
            story: sgopi,
            displayboder: true,
          ),
        ],
      ),
    );
  }
}
