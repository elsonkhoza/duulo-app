import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class MeetStories extends StatefulWidget {
  const MeetStories({super.key});

  @override
  State<MeetStories> createState() => _MeetStoriesState();
}

class _MeetStoriesState extends State<MeetStories> {
  final storyController = StoryController();

  @override
  void dispose() {
    storyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryView(
        storyItems: [
          StoryItem.text(
            title: "Image 1",
            backgroundColor: Colors.blue,
          ),
          StoryItem.text(
            title: "Image 2",
            backgroundColor: Colors.red,
          ),
        ],
        progressPosition: ProgressPosition.top,
        repeat: false,
        controller: storyController,
      ),
    );
  }
}

