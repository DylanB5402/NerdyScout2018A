import 'package:flutter/material.dart';
import 'match_scouting.dart';

DefaultTabController homeTabs = new DefaultTabController(
  length: 3,
  child: Scaffold(
    appBar: AppBar(
      bottom: TabBar(
        tabs: [
          Tab(text: "Match"),
          Tab(text: "Pit"),
          Tab(text: "Viewer"),        
        ],
      ),
      title: Text("Nerdy Scout 2019"),
    ),
    body: TabBarView(
      children: [
        matchScouting,
        Text("Pit"),
        Text("Viewer")
      ],
    ),
  ),
);