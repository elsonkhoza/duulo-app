import 'package:app/modules/meets/ui/page/meets_page_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../meets/ui/widgets/meet_item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentPageIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed:()=>{}, icon: const Icon(Icons.filter_list)),
          IconButton(onPressed:()=>{}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.explore),
            icon: Icon(Icons.explore_outlined),
            label: 'Meet',
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite_outline),
            selectedIcon:Icon(Icons.favorite) ,
            label: 'Likes',
          ),
          NavigationDestination(
            icon: Icon(Icons.messenger_outline),
            selectedIcon:Icon(Icons.messenger) ,
            label: 'Chats',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: <Widget>[
      const MeetsPageView(),
        Container(
          alignment: Alignment.center,
          child: const Text('Likes'),
        ),
        Container(
          alignment: Alignment.center,
          child: const Text('Chats'),
        ),
        Container(
          alignment: Alignment.center,
          child: const Text('Profile'),
        ),
      ][currentPageIndex],
    );
  }
}
