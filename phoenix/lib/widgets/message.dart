import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/models/messagedata_model.dart';
import 'package:phoenix/modules/messages/chat_screen.dart';



Widget onLineUserButton(OnlineUserData onlineUserData,BuildContext context){
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
                      image:AssetImage('${onlineUserData.avatarUrl}'),
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
                      backgroundColor:onlineUserData.isOnline==true?Colour('#02FF00'):Colour('#EFEFEF'),
                      onPressed: (){},
                      child: onlineUserData.isOnline==true?  Container(
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
        Text('${onlineUserData.userName}',
          overflow:TextOverflow.ellipsis,
        ),
      ],
    ) ,
  );
}

Widget messageCard(LastMessageData lastMessageData,BuildContext context){
  return SafeArea(
    child:Padding(
      padding: const EdgeInsets.only(
        right: 20,
      ),
      child: InkWell(
        focusColor: Colour('#EFEFEF'),
        onTap: ()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const ChatScreen())),
        onLongPress: (){
          AlertDialog(
            backgroundColor: Colour('#EFEFEF'),
            content: Text(
              'Delete',
            ),
          );
        },
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
                          image:AssetImage('${lastMessageData.avatarUrl}'),
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
                          backgroundColor:lastMessageData.isOnline==true?Colour('#02FF00'):Colour('#EFEFEF'),
                          onPressed: (){},
                          child: lastMessageData.isOnline==true?  Container(
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
                  Text('${lastMessageData.userName}',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      color: Colour('#505050'),
                      fontWeight: lastMessageData.isRead==true?FontWeight.normal:FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text('${lastMessageData.bodyOfLastMessage}',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      color: Colour('#505050'),
                      fontWeight: lastMessageData.isRead==true?FontWeight.normal:FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text('${lastMessageData.timeOfMessage}',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      color: Colour('#505050'),
                      fontWeight: lastMessageData.isRead==true?FontWeight.normal:FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),

              // Padding(
              //   padding: EdgeInsetsDirectional.only(
              //     bottom: 30,
              //     end: lastMessageData.userName==15? 90:100,
              //   ),
              //   child: IconButton(
              //     onPressed:(){},
              //     icon:const Icon(Icons.close),
              //     color: Colour('#505050'),
              //     iconSize: 20,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    ) ,
  );
}