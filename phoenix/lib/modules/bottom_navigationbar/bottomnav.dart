import 'package:colour/colour.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/modules/home_pagescreens/homepage.dart';
import 'package:phoenix/modules/notify_screens/notification.dart';
import 'package:phoenix/modules/posts/watch_srceens/watched_videos.dart';
import 'package:phoenix/modules/profile_screens/profile_page.dart';
import 'package:phoenix/modules/search_screens/search.dart';


class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectIndex=0;
  var screens=const [ HomePage(),WatchVideos(),Notify(),Search(),ProfilePage()];
  late DateTime _selectedDate;
  void _datePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate:DateTime(2020),
      lastDate: DateTime.now(),
    ).then((value){
      if(value==null){return;}
      setState(() {
        _selectedDate =value;
      });
    });
  }
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
