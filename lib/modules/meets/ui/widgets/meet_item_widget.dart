import 'package:app/modules/meets/ui/widgets/meet_stories_widget.dart';
import 'package:flutter/material.dart';

class MeetItem extends StatefulWidget {
  const MeetItem({super.key});

  @override
  State<MeetItem> createState() => _MeetItemState();
}

class _MeetItemState extends State<MeetItem> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MeetStories(),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 8, bottom: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () => {},
                  icon: const Icon(
                    Icons.favorite_outline,
                    size: 32,
                  ),
                  color: Colors.white,
                ),
                const Text(
                  "Like",
                  style: TextStyle(color: Colors.white),
                ),
                IconButton(
                  onPressed: () => {},
                  icon: const Icon(
                    Icons.messenger_outline,
                    size: 32,
                  ),
                  color: Colors.white,
                ),
                const Text(
                  "Chat",
                  style: TextStyle(color: Colors.white),
                ),
                IconButton(
                  onPressed: () => {},
                  icon: const Icon(
                    Icons.info_outline,
                    size: 32,
                  ),
                  color: Colors.white,
                ),
                const Text(
                  "Info",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.only(bottom: 16, right: 8),
            child: ListTile(
              leading: CircleAvatar(),
              title: Text("Username"),
              subtitle: Text("Location, Age"),
            ),
          ),
        )
      ],
    );
  }
}
