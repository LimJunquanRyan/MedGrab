import 'package:flutter/material.dart';
import 'package:medgrab/pages/main.dart';

class bottomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(onPressed: () { Navigator.popUntil(context, ModalRoute.withName(base.MAINPAGE)); }, icon: const Icon(Icons.home), tooltip: "Home Page"),
          IconButton(onPressed: () {}, icon: const Icon(Icons.forum), tooltip: "Chat"),
          IconButton(onPressed: () {}, icon: const Icon(Icons.feedback), tooltip: "Feedback"),
          IconButton(onPressed: () {}, icon: const Icon(Icons.person), tooltip: "Profile"),
        ],
      ),
    );
  }
}