import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/widgets/shared/components/component.dart';
import '../../models/friendsdata_model.dart';
import '../../widgets/friends_page.dart';
class MyFriends extends StatefulWidget {
  const MyFriends({Key? key}) : super(key: key);

  @override
  State<MyFriends> createState() => _MyFriendsState();
}

class _MyFriendsState extends State<MyFriends> {
  double totalNumberOfFriends= 20;
  List<FriendsData> youFriendsList=[
    FriendsData(
      'assets/images/s2.jpg',
      'Ali Magdy ',
    ),
    FriendsData(
      'assets/images/s3.jpg',
      'Seif Ali',
    ),
    FriendsData(
      'assets/images/r2.jpg',
      'Manar Ashraf',
    ),
    FriendsData(
      'assets/images/r3.jpg',
      'Hala Ahmed',
    ),
    FriendsData(
      'assets/images/r4.jpg',
      'Nelly Ahmed',
    ),
    FriendsData(
      'assets/images/s6.jpg',
      'Ali Emam',
    ),
    FriendsData(
      'assets/images/s5.jpg',
      'Mazen Ali',
    ),
    FriendsData(
      'assets/images/s4.jpg',
      'Mohamed Ali',
    ),
    FriendsData(
      'assets/images/s12.jpg',
      'Yousef Ahmed',
    ),
    FriendsData(
      'assets/images/r5.jpg',
      'Hames Ali',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 270,
            ),
            child: Text(
              '(20)',
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
                friends(youFriendsList[5], context),
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
                friends(youFriendsList[6], context),
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
                friends(youFriendsList[7], context),
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
                friends(youFriendsList[8], context),
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
                friends(youFriendsList[9], context),
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
                friends(youFriendsList[7], context),
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
        ],
      ),
    );
  }
}
