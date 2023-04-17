import 'package:flutter/material.dart';
import 'package:colour/colour.dart';
import 'package:phoenix/models/messagedata_model.dart';
import 'package:phoenix/widgets/message.dart';


 

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  List<OnlineUserData> onlineUsers=[
    OnlineUserData(
      'assets/images/s1.jpg',
      '',
      true,
    ),
     OnlineUserData(
      'assets/images/s1.jpg',
      '',
      false,
    ),
    OnlineUserData(
      'assets/images/s1.jpg',
      '',
      true,
    ),
     OnlineUserData(
      'assets/images/s1.jpg',
      '',
      true,
    ),
     OnlineUserData(
      'assets/images/s1.jpg',
      '',
      true,
    ),
    OnlineUserData(
      'assets/images/s1.jpg',
      '',
      false,
    ),
    OnlineUserData(
      'assets/images/s1.jpg',
      '',
      false,
    ),
    OnlineUserData(
      'assets/images/s1.jpg',
      '',
      true,
    ),
  ];
  List<LastMessageData> contentMessages=[
    LastMessageData(
      'assets/images/s1.jpg',
      'Ahmed Mahdy',
      false,
      false,
      'ahmed called you.',
      '4 hours ago'
    ),
    LastMessageData(
        'assets/images/s1.jpg',
        'Emam Ali',
        true,
        false,
        ' what\'s wrong?',
        'Thu at 3:38 PM'
    ),
    LastMessageData(
        'assets/images/s1.jpg',
        'Emam Ali',
        true,
        true,
        ' what\'s wrong?',
        'Thu at 3:38 PM'
    ),
    LastMessageData(
        'assets/images/s1.jpg',
        'Ahmed Mahdy',
        true,
        true,
        'ahmed called you.',
        '4 hours ago'
    ),
    LastMessageData(
        'assets/images/s1.jpg',
        'Ahmed Mahdy',
        true,
        true,
        'ahmed called you.',
        '4 hours ago'
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30
          ),
          child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor:Colour('#FFFFFF') ,
              centerTitle:true,
              title:Text(
                'Messages',
                style:TextStyle(
                  color: Colour('#505050'),
                  fontFamily: 'Segoe UI',
                  fontSize: 18,
                  fontWeight:FontWeight.bold,
                ),
              ),
              leading:IconButton(
                color:Colour('#000000').withOpacity(0.5),
                onPressed:()=>Navigator.pop(context),
                icon:const Icon(Icons.arrow_back_ios_new_rounded),
              ),
            ),
            backgroundColor: Colour('#FFFFFF'),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 19,
                          top: 24,
                          bottom:20,
                      ),
                      child: Container(
                        width: 336,
                        height: 45,
                        decoration: BoxDecoration(
                          color:Colour('#EFEFEF'),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: TextFormField(
                          decoration:InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10
                            ),
                            border: InputBorder.none,
                            hintText:'Search..',
                            hintStyle:TextStyle(
                              fontSize: 16,
                              fontFamily: 'Segoe UI',
                              fontWeight: FontWeight.normal,
                              color: Colour('#505050'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Active now!',
                      style:TextStyle(
                        color: Colour('#505050'),
                        fontFamily: 'Segoe UI',
                        fontSize: 12,
                        fontWeight:FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.00000004,
                    ),
                    Container(
                       width: double.infinity,
                       height:100,
                       child: ListView(
                         scrollDirection:Axis.horizontal,
                         children: [
                           onLineUserButton(onlineUsers[0],context),
                           onLineUserButton(onlineUsers[1],context),
                           onLineUserButton(onlineUsers[2],context),
                           onLineUserButton(onlineUsers[3],context),
                           onLineUserButton(onlineUsers[4],context),
                           onLineUserButton(onlineUsers[5],context),
                           onLineUserButton(onlineUsers[6],context),
                           onLineUserButton(onlineUsers[7],context),
                         ],
                       ),
                     ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.0032,
                    ),
                    Text(
                      'Messages',
                      style:TextStyle(
                        color: Colour('#505050'),
                        fontFamily: 'Segoe UI',
                        fontSize: 12,
                        fontWeight:FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.0032,
                    ),
                    // ListView.separated(
                    //   itemCount: contentMessages.length,
                    //   itemBuilder: (context,index)=> messageCard(contentMessages[index], context),
                    //   scrollDirection:Axis.horizontal,
                    //   separatorBuilder: (context,index)=> const SizedBox(
                    //     height: 20,
                    //   ),
                    // ),

                    messageCard(contentMessages[0], context),
                    messageCard(contentMessages[1], context),
                    messageCard(contentMessages[2], context),
                    messageCard(contentMessages[3], context),
                    messageCard(contentMessages[0], context),
                    messageCard(contentMessages[4], context),
                    messageCard(contentMessages[0], context),

                  ],
                ),
              ),
            ),

    ),
        ),
    );
  }
}

