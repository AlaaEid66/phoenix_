import 'package:colour/colour.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/modules/home_pagescreens/homepage.dart';
import 'package:phoenix/modules/home_pagescreens/notify_screens/notification.dart';
import 'package:phoenix/modules/home_pagescreens/search_screens/search.dart';
import 'package:phoenix/modules/posts/watch_srceens/watched_videos.dart';
import 'package:phoenix/modules/profile_screens/profile_page.dart';


class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectIndex=0;
  var screens=const [ HomePage(),WatchVideos(),Notify(),Search(),ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:screens[selectIndex],
      bottomNavigationBar:CurvedNavigationBar(
        backgroundColor: Colour('#008894'),
        onTap: (index){
          setState(() {
            selectIndex=index;
          });
        },
        items: const[
          Icon(Icons.home,color: Colors.grey,),
          Icon(Icons.ondemand_video,color: Colors.grey,),
          Icon(Icons.notifications,color: Colors.grey,),
          Icon(Icons.search,color: Colors.grey),
          Icon(Icons.perm_identity_rounded,color:Colors.grey)
        ],
      ),
      floatingActionButton:FloatingActionButton(
        backgroundColor: Colour('#008894'),
        onPressed: (){},
        child:const Icon(
          Icons.smart_toy_outlined,
        ),
      ),
    );
  }
}
