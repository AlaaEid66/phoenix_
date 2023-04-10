 import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/models/messagedata_model.dart';

 Widget messagesButton(MessagesData messagesData,BuildContext context){
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
                   width: 50,
                   height: 50,
                   decoration: BoxDecoration(
                     borderRadius:BorderRadius.circular(50),
                     image: DecorationImage(
                       image:AssetImage('${messagesData.avatarUrl}'),
                       fit: BoxFit.cover,
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(
                     top: 30,
                     left: 32,
                   ),
                   child:Container(
                     width: 15,
                     height: 15,
                     child: FloatingActionButton(
                       mini: true,
                       backgroundColor:messagesData.isOnline==true?Colour('#02FF00'):Colour('#EFEFEF'),
                       onPressed: (){},
                       child: messagesData.isOnline==true?  Container(
                         width: 10,
                         height: 10,
                         color:Colour('#02FF00'),
                       ):
                       Container(
                         width: 10,
                         height: 10,
                         color: Colour('#EFEFEF'),
                       ),
                       // child: isOnline== true?

                     ),
                   ),
                 ),
               ],
             ),
           ),
         ),
         const SizedBox(height: 5,),
         Text('${messagesData.userName}',
           overflow:TextOverflow.ellipsis,
         ),
       ],
     ) ,
   );
 }