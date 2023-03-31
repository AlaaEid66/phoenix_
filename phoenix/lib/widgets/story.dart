 import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/models/storydata_model.dart';
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
                 border:Border.all(color:Colour('#02FF00'),width:2),
                 borderRadius:BorderRadius.circular(50),
                 image: DecorationImage(
                   image:AssetImage('${storyData.avatarUrl}'),
                   fit: BoxFit.cover,
                 ),
               ),
             ),
           ),
           const SizedBox(height: 5,),
           Expanded(
             child: Text('${storyData.userName}',
               overflow:TextOverflow.ellipsis,
               maxLines: 1,
             ),
           ),
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
                       backgroundColor: Colour('#02FF00'),
                         onPressed:(){},
                         child: Icon(
                           Icons.add,
                           color: Colour('#FFFFFF'),
                           size: 16,
                         ),
                     ),
                   ),
                 ),
               ],
             ),
           ),
         ),
        const SizedBox(height: 5,),
         Text('${storyDataProfile.userNameProfile}',
         ),
       ],
     ) ,
   );
 }