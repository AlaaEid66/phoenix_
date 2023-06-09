import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/models/notificationdata_model.dart';
import 'package:phoenix/widgets/notify.dart';
class Notify extends StatefulWidget {
  const Notify({Key? key}) : super(key: key);

  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  List<NotifyData> notifies=[
    NotifyData(
      'assets/images/s7.jpg',
      'Marwan Ahmed',
      ' liked your post basics of\nmarketing',
      '4 hours',
    ),
    NotifyData(
      'assets/images/s9.jpg',
      'Noah Alaa',
      ' mentioned you in a comment',
      '10 hours',
    ),
    NotifyData(
      'assets/images/r1.jpg',
      'Sally Alaa',
      ' sent you a friend request',
      'Yesterday at 5:55 PM',
    ),
    NotifyData(
      'assets/images/s8.jpg',
      'Ramiz Mahmoud',
      ' commented on your post',
      'Fri at 6:34 PM',
    ),
    NotifyData(
      'assets/images/s10.jpg',
      'Ali Maghraby',
      ' liked your post basics of\nmarketing',
      'Fri at 3:38 PM',
    ),
    NotifyData(
      'assets/images/s11.jpg',
      'Emam Ali',
      ' sent you a friend request',
      'Thu at 3:38 PM',
    ),
    NotifyData(
      'assets/images/s12.png',
      'An admin',
      ' mentioned you in a comment\nin Medical calc',
      'Thu at 3:28 PM',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40,

      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Notifications',),
          leading:IconButton(
            color:Colour('#000000').withOpacity(0.5),
            onPressed:(){},
            icon:const Icon(Icons.arrow_back_ios_new_rounded),
          ),
        ),
        backgroundColor: Colour('#FFFFFF'),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  bottom: 8,
                ),
                child: Text('New',
                  style:TextStyle(
                    fontFamily:'Segoe UI',
                    fontSize: 16,
                    color:Colour('#008894'),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
               SizedBox(
                 height:MediaQuery.of(context).size.height*0.005,
               ),
               notifyLikeNew(notifies[0], context),
              notifyCommentNew(notifies[1], context),
              notifyAddFriendNew(notifies[2], context),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  bottom: 8,
                  top: 16
                ),
                child: Text('Earlier',
                  style:TextStyle(
                    fontFamily:'Segoe UI',
                    fontSize: 18,
                    color:Colour('#008894'),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              notifyCommentEarlier(notifies[3], context),
              notifyLikeEarlier(notifies[4], context),
              notifyAddFriendEarlier(notifies[5], context),
              notifyCommentEarlier(notifies[6], context),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
