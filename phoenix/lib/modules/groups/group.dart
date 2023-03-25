import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/modules/groups/group_data.dart';
import 'package:phoenix/modules/save_items/saved_data.dart';
class Groups extends StatefulWidget {
  const Groups({Key? key}) : super(key: key);

  @override
  State<Groups> createState() => _GroupsState();
}

class _GroupsState extends State<Groups> {
  List<GroupData> group=[
    GroupData(
      'assets/images/g1.jpg',
      'Your second home',
    ),
    GroupData(
      'assets/images/g5.jpg',
      'Medical treatment',
    ),
    GroupData(
      'assets/images/aid.jpg',
      'First aid',
    ),
    GroupData(
      'assets/images/g3.jpg',
      'We can do it!',
    ),
    GroupData(
      'assets/images/g2.jpg',
      'Nearest healthcare',
    ),
    GroupData(
      'assets/images/g4.jpg',
      'You can!',
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 35,
        ),
        child: Scaffold(
          backgroundColor: Colour('#FFFFFF'),
          appBar: AppBar(
            elevation: 0,
            backgroundColor:Colour('#FFFFFF') ,
            centerTitle:true,
            title:Text(
              'Groups',
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
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 24,
                    ),
                    grouped(group[0], context),
                    const SizedBox(
                      width: 24,
                    ),
                    grouped(group[1], context),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 24,
                    ),
                    grouped(group[2], context),
                    const SizedBox(
                      width: 24,
                    ),
                    grouped(group[3], context),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 24,
                    ),
                    grouped(group[4], context),
                    const SizedBox(
                      width: 24,
                    ),
                    grouped(group[5], context),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 24,
                    ),
                    grouped(group[0], context),
                    const SizedBox(
                      width: 24,
                    ),
                    grouped(group[1], context),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 24,
                    ),
                    grouped(group[2], context),
                    const SizedBox(
                      width: 24,
                    ),
                    grouped(group[3], context),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 24,
                    ),
                    grouped(group[4], context),
                    const SizedBox(
                      width: 24,
                    ),
                    grouped(group[5], context),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),

        ),
      ),
    );
  }
}
