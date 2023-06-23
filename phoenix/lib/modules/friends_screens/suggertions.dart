import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/models/friendsdata_model.dart';
import 'package:phoenix/widgets/friends_page.dart';
import 'package:phoenix/widgets/shared/components/component.dart';
class Suggestions extends StatefulWidget {
  const Suggestions({Key? key}) : super(key: key);

  @override
  State<Suggestions> createState() => _SuggestionsState();
}

class _SuggestionsState extends State<Suggestions> {
  List<FriendsData> friendsSuggestionList=[
    FriendsData(
      'assets/images/n1.jpg',
      'Nader Amen',
    ),
    FriendsData(
      'assets/images/n2.jpg',
      'Noah Rady',
    ),
    FriendsData(
      'assets/images/r6.jpg',
      'Manar Ali',
    ),
    FriendsData(
      'assets/images/r7.jpg',
      'Hala Ashraf',
    ),
    FriendsData(
      'assets/images/r8.jpg',
      'Hania Ashraf',
    ),
    FriendsData(
      'assets/images/r9.jpg',
      'Logy Ahmed',
    ),
    FriendsData(
      'assets/images/n3.jpg',
      'Magdy Ahmed',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          Card(
            elevation: 0,
            child:Column(
              children: [
                friends(friendsSuggestionList[0], context),
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
                friends(friendsSuggestionList[1], context),
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
                friends(friendsSuggestionList[2], context),
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
                friends(friendsSuggestionList[3], context),
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
                friends(friendsSuggestionList[4], context),
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
                friends(friendsSuggestionList[5], context),
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
                friends(friendsSuggestionList[6], context),
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
