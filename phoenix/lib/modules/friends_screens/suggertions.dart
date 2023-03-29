import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/modules/friends_screens/friends_data.dart';
import 'package:phoenix/modules/friends_screens/friends_page.dart';
import 'package:phoenix/shared/components/component.dart';
class Suggestions extends StatefulWidget {
  const Suggestions({Key? key}) : super(key: key);

  @override
  State<Suggestions> createState() => _SuggestionsState();
}

class _SuggestionsState extends State<Suggestions> {
  List<FriendsData> friendsList=[
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
    return  Column(
      children: [
        Card(
          elevation: 0,
          child:Column(
            children: [
              friends(friendsList[0+1], context),
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
              friends(friendsList[1], context),
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
              friends(friendsList[2], context),
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
              friends(friendsList[3], context),
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
              friends(friendsList[4], context),
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
              friends(friendsList[4], context),
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
