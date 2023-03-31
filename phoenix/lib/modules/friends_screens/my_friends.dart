import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/shared/components/component.dart';

import '../../models/friendsdata_model.dart';
import '../../widgets/friends_page.dart';
class MyFriends extends StatefulWidget {
  const MyFriends({Key? key}) : super(key: key);

  @override
  State<MyFriends> createState() => _MyFriendsState();
}

class _MyFriendsState extends State<MyFriends> {
  double totalNumberOfFriends= 1.233;
  List<FriendsData> youFriendsList=[
    FriendsData(
      'assets/images/s1.jpg',
      'Nader Amen',
    ),
    FriendsData(
      'assets/images/s1.jpg',
      'Noah Rady',
    ),
    FriendsData(
      'assets/images/s1.jpg',
      'Manar Ali',
    ),
    FriendsData(
      'assets/images/s1.jpg',
      'Hala Ashraf',
    ),
    FriendsData(
      'assets/images/s1.jpg',
      'Nelly Ahmed',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 270,
          ),
          child: Text(
            '(1,233)',
            style: TextStyle(
              color: Colour('#505050'),
              fontFamily: 'Segoe UI',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Card(
          elevation: 0,
          child:Column(
            children: [
              friends(youFriendsList[0], context),
              const SizedBox(
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 60,
                ),
                child: Row(
                  children: [
                    defButton(
                        pressed:(){},
                        backgroundColor: Colour('#008894'),
                        text: 'Confirm',
                        textColor: Colour('#FFFFFF'),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        width: 120,
                        height: 32
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    defButton(
                        backgroundColor: Colour('#EFEFEF'),
                        pressed:(){},
                        text: 'Delete',
                        textColor: Colour('#5B5E60'),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        width: 120,
                        height: 32
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Card(
          elevation: 0,
          child:Column(
            children: [
              friends(youFriendsList[1], context),
              const SizedBox(
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 60,
                ),
                child: Row(
                  children: [
                    defButton(
                        pressed:(){},
                        backgroundColor: Colour('#008894'),
                        text: 'Confirm',
                        textColor: Colour('#FFFFFF'),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        width: 120,
                        height: 32
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    defButton(
                        backgroundColor: Colour('#EFEFEF'),
                        pressed:(){},
                        text: 'Delete',
                        textColor: Colour('#5B5E60'),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        width: 120,
                        height: 32
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Card(
          elevation: 0,
          child:Column(
            children: [
              friends(youFriendsList[2], context),
              const SizedBox(
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 60,
                ),
                child: Row(
                  children: [
                    defButton(
                        pressed:(){},
                        backgroundColor: Colour('#008894'),
                        text: 'Confirm',
                        textColor: Colour('#FFFFFF'),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        width: 120,
                        height: 32
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    defButton(
                        backgroundColor: Colour('#EFEFEF'),
                        pressed:(){},
                        text: 'Delete',
                        textColor: Colour('#5B5E60'),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        width: 120,
                        height: 32
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Card(
          elevation: 0,
          child:Column(
            children: [
              friends(youFriendsList[3], context),
              const SizedBox(
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 60,
                ),
                child: Row(
                  children: [
                    defButton(
                        pressed:(){},
                        backgroundColor: Colour('#008894'),
                        text: 'Confirm',
                        textColor: Colour('#FFFFFF'),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        width: 120,
                        height: 32
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    defButton(
                        backgroundColor: Colour('#EFEFEF'),
                        pressed:(){},
                        text: 'Delete',
                        textColor: Colour('#5B5E60'),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        width: 120,
                        height: 32
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Card(
          elevation: 0,
          child:Column(
            children: [
              friends(youFriendsList[4], context),
              const SizedBox(
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 60,
                ),
                child: Row(
                  children: [
                    defButton(
                        pressed:(){},
                        backgroundColor: Colour('#008894'),
                        text: 'Confirm',
                        textColor: Colour('#FFFFFF'),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        width: 120,
                        height: 32
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    defButton(
                        backgroundColor: Colour('#EFEFEF'),
                        pressed:(){},
                        text: 'Delete',
                        textColor: Colour('#5B5E60'),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        width: 120,
                        height: 32
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Card(
          elevation: 0,
          child:Column(
            children: [
              friends(youFriendsList[4], context),
              const SizedBox(
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 60,
                ),
                child: Row(
                  children: [
                    defButton(
                        pressed:(){},
                        backgroundColor: Colour('#008894'),
                        text: 'Confirm',
                        textColor: Colour('#FFFFFF'),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        width: 120,
                        height: 32
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    defButton(
                        backgroundColor: Colour('#EFEFEF'),
                        pressed:(){},
                        text: 'Delete',
                        textColor: Colour('#5B5E60'),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        width: 120,
                        height: 32
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
