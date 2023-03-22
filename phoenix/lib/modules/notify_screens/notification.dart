import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/modules/notify_screens/notification_data.dart';
import 'package:phoenix/modules/notify_screens/notify.dart';
class Notify extends StatefulWidget {
  const Notify({Key? key}) : super(key: key);

  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  List<NotifyData> notifies=[
    NotifyData(
      'assets/images/s1.jpg',
      'Ahmed Mahdy',
      '''liked your post.."basics of
       marketing''',
      '4 hours',
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
          elevation: 0,
          backgroundColor: Colour('#FFFFFF'),
          centerTitle: true,
          title: Text('Watch!',
            style:TextStyle(
              color: Colour('#505050'),
              fontFamily: 'Segoe UI',
              fontSize: 18,
              fontWeight:FontWeight.bold,
            ),
          ),
          leading:IconButton(
            color:Colour('#000000').withOpacity(0.5),
            onPressed:(){},
            icon:Icon(Icons.arrow_back_ios_new_rounded),
          ),
        ),
        backgroundColor: Colour('#FFFFFF'),
        body: SingleChildScrollView(
          child: Column(
            children: [
               notifyPage(notifies[0], context),
            ],
          ),
        ),
      ),
    );
  }
}
