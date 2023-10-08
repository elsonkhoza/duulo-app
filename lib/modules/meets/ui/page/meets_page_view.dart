import 'package:app/modules/meets/ui/widgets/meet_item_widget.dart';
import 'package:flutter/material.dart';

class MeetsPageView extends StatefulWidget {
  const MeetsPageView({super.key});

  @override
  State<MeetsPageView> createState() => _MeetsPageViewState();
}

class _MeetsPageViewState extends State<MeetsPageView> {

  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  // Test List
  List<MeetItem> meets=[
    MeetItem(),
    MeetItem(),
    MeetItem(),
    MeetItem(),
  ];

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      scrollDirection: Axis.vertical,
      children: meets,
    );
  }
}
