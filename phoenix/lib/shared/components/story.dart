 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/modules/stories/storydata.dart';
 Widget storyButton(StoryData storyData,BuildContext context){
   return SafeArea(
     child: Padding(
       padding: const EdgeInsets.only(
         top: 24,
         right: 8,
       ),
       child: Column(
         children: [
           InkWell(
             borderRadius:BorderRadius.circular(50),
             onTap:(){},
             child: Container(
               width: 54,
               height: 54,
               decoration: BoxDecoration(
                 border:Border.all(color:Colors.red,width:2),
                 borderRadius:BorderRadius.circular(50),
                 image: DecorationImage(
                   image:AssetImage('${storyData.avatarUrl}'),
                   fit: BoxFit.cover,
                 ),
               ),
             ),
           ),
           const SizedBox(height: 5,),
           Text('${storyData.userName}'),
         ],
       ),
     ),
   );
 }
 Widget storyButtonProfile(StoryDataProfile storyDataProfile, BuildContext context){
   return SafeArea(
     child:Column(
       children: [
         InkWell(
           borderRadius:BorderRadius.circular(50),
           onTap:(){},
           child: Padding(
             padding: const EdgeInsets.only(
               left: 2,
               top: 25,
               right: 16,
             ),
             child: Stack(
               children: [
                 Container(
                   width: 54,
                   height: 54,
                   decoration: BoxDecoration(
                     borderRadius:BorderRadius.circular(50),
                     image: DecorationImage(
                       image:AssetImage('${storyDataProfile.avatarUrlProfile}'),
                       fit: BoxFit.cover,
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(
                     top: 35,
                     left: 36,
                   ),
                   child:Container(
                     width:18,
                     height: 18,
                     child: FloatingActionButton(
                       mini: true,
                         onPressed:(){},
                         child: const Icon(
                           Icons.add,
                           size: 9,
                         ),
                     ),
                   ),
                 ),
               ],
             ),
           ),
         ),
        const SizedBox(height: 5,),
         Expanded(child: Text('${storyDataProfile.userNameProfile}')),
       ],
     ) ,
   );
 }