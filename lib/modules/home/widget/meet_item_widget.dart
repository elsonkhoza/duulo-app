import 'package:flutter/material.dart';

class MeetItem extends StatefulWidget {
  const MeetItem({super.key});

  @override
  State<MeetItem> createState() => _MeetItemState();
}

class _MeetItemState extends State<MeetItem> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/happy_couple.jpg"),
                fit: BoxFit.cover)),
        child: null,
      )
      ,
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.bottomRight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(onPressed: ()=>{}, icon: const Icon(Icons.favorite_outline,size: 32,),color: Colors.white,),
              const Text("Like",style: TextStyle(color: Colors.white),),
              IconButton(onPressed: ()=>{}, icon: const Icon(Icons.messenger_outline,size: 32,),color: Colors.white,),
              const Text("Chat",style: TextStyle(color: Colors.white),),
              IconButton(onPressed: ()=>{}, icon: const Icon(Icons.info_outline,size: 32,),color: Colors.white,),
              const Text("Info",style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
      )
    ],);
  }
}
