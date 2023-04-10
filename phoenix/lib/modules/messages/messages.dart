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
  List<MessagesData> messages=[
    MessagesData(
      'assets/images/s1.jpg',
      '',
      true,
    ),
    MessagesData(
      'assets/images/s1.jpg',
      '',
      false,
    ),
    MessagesData(
      'assets/images/s1.jpg',
      '',
      true,
    ),
    MessagesData(
      'assets/images/s1.jpg',
      '',
      true,
    ),
    MessagesData(
      'assets/images/s1.jpg',
      '',
      true,
    ),
    MessagesData(
      'assets/images/s1.jpg',
      '',
      false,
    ),
    MessagesData(
      'assets/images/s1.jpg',
      '',
      false,
    ),
    MessagesData(
      'assets/images/s1.jpg',
      '',
      true,
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
                            contentPadding: const EdgeInsets.only(
                                left: 10
                            ),
                            focusedBorder:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide:BorderSide(
                                  color:Colour('#EFEFEF'),
                                  width: 0,
                                )
                            ),
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
                           messagesButton(messages[0],context),
                           messagesButton(messages[1],context),
                           messagesButton(messages[2],context),
                           messagesButton(messages[3],context),
                           messagesButton(messages[4],context),
                           messagesButton(messages[5],context),
                           messagesButton(messages[6],context),
                           messagesButton(messages[7],context),
                         ],
                       ),
                     ),
                  ],
                ),
              ),
            ),

    ),
        ),
    );
  }
}
