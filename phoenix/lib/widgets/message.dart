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

 Widget messageCard(MessageSentData messageSentData,BuildContext context){
   return SafeArea(
     child:Padding(
       padding: const EdgeInsets.only(
         right: 20,
       ),
       child: InkWell(
         focusColor: Colour('#EFEFEF'),
         onTap: (){},
         child: Card(
           color: Colour('#EFEFEF'),
           child: Row(
             children: [
               Padding(
                 padding: const EdgeInsets.only(
                   left: 16,
                   top: 8,
                   bottom: 16,
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
                           image:AssetImage('${messageSentData.avatarUrl}'),
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
                           backgroundColor:messageSentData.isOnline==true?Colour('#02FF00'):Colour('#EFEFEF'),
                           onPressed: (){},
                           child: messageSentData.isOnline==true?  Container(
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
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('${messageSentData.userName}',
                     style: TextStyle(
                       fontFamily: 'Segoe UI',
                       color: Colour('#505050'),
                       fontWeight: messageSentData.read==true?FontWeight.normal:FontWeight.bold,
                       fontSize: 12,
                     ),
                   ),
                   const SizedBox(
                     height: 4,
                   ),
                   Text('${messageSentData.bodyOfMessages}',
                     style: TextStyle(
                       fontFamily: 'Segoe UI',
                       color: Colour('#505050'),
                       fontWeight: messageSentData.read==true?FontWeight.normal:FontWeight.bold,
                       fontSize: 12,
                     ),
                   ),
                   const SizedBox(
                     height: 7,
                   ),
                   Text('${messageSentData.timeOfMessages}',
                     style: TextStyle(
                       fontFamily: 'Segoe UI',
                       color: Colour('#505050'),
                       fontWeight: messageSentData.read==true?FontWeight.normal:FontWeight.bold,
                       fontSize: 10,
                     ),
                   )
                 ],
               ),
               SizedBox(
                 width: MediaQuery.of(context).size.width*0.282,
               ),
               Padding(
                 padding: const EdgeInsets.only(
                   bottom: 30,
                 ),
                 child: IconButton(
                   onPressed:(){},
                   icon:const Icon(Icons.close),
                   color: Colour('#505050'),
                   iconSize: 20,
                 ),
               ),
             ],
           ),
         ),
       ),
     ) ,
   );
 }
