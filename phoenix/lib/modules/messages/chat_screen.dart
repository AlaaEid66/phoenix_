import 'package:avatar_glow/avatar_glow.dart';
import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:phoenix/models/messagedata_model.dart';
import 'package:phoenix/modules/messages/receive_screen.dart';
import 'package:phoenix/modules/messages/sender_screen.dart';
import 'package:phoenix/modules/messages/videocall_screen.dart';
import 'package:phoenix/widgets/message.dart';
class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatUser> user=[
    ChatUser(
      'assets/images/s1.jpg',
      'Emam'
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsetsDirectional.only(
        top: 50,
        start: 20,
        end: 20,
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colour('#FFFFFF'),
          appBar: AppBar(
              backgroundColor: Colour('#FFFFFF'),
              elevation: 0,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                color: Colour('#000000').withOpacity(0.5),
                iconSize: 26,
                onPressed: ()=>Navigator.pop(context),
              ),
              title: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Container(
                  width: 46,
                  height: 46,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(50),
                    image: DecorationImage(
                      image:AssetImage('${user[0].avatarUrl}'),
                      fit: BoxFit.cover,
                    ),
                  ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Text('${user[0].userName}',
                      style: TextStyle(
                          fontFamily: 'Segoe UI',
                          color: Colour('#505050'),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                IconButton(
                  onPressed:(){},
                  color: Colour('#000000').withOpacity(0.5),
                  icon:const Icon(Icons.call),
                  iconSize: 25,
                ),
                IconButton(
                  color: Colour('#000000').withOpacity(0.5),
                  onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const VideoCallScreen())),
                  icon:const Icon(FontAwesomeIcons.video),
                  iconSize: 25,
                ),
              ],
            ),
          body: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              Expanded(
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context,index){
                    if(index % 2==0){
                      return const Sender();
                    }else{
                      return const Receiver();
                    }
                  },
                  separatorBuilder: (context,index)=> const SizedBox(
                    height: 16,
                  ),
                  itemCount:20,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 2,
                  bottom: 44,
                  end: 2,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          hintText: 'write...',
                          hintStyle: TextStyle(
                            fontFamily: 'Segoe UI',
                            color: Colour('#505050'),
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                          suffixIcon: const Icon(Icons.mood_outlined)
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.mic),
                      color: Colour('#5B5E60'),
                      iconSize: 25,
                      onPressed: (){},
                    ),
                    IconButton(
                      icon: const Icon(Icons.add_photo_alternate),
                      color: Colour('#5B5E60'),
                      iconSize: 25,
                      onPressed: (){},
                    ),
                    IconButton(
                      icon: const Icon(Icons.camera_alt),
                      color: Colour('#5B5E60'),
                      iconSize: 25,
                      onPressed: (){},
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.05,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith((states) =>Colour('#008894')),
                      ),
                        onPressed:(){},
                        child:Text('send',
                          style:TextStyle(
                            fontFamily: 'Segoe UI',
                            color: Colour('#FFFFFF'),
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
