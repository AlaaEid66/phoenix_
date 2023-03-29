import 'package:flutter/material.dart';
import 'package:colour/colour.dart';
import 'package:phoenix/shared/components/component.dart';
import 'friends_data.dart';

Widget friends(FriendsData friendsData,BuildContext context){
  return SafeArea(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [

            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(50),
                image: DecorationImage(
                  image:AssetImage('${friendsData.avatarFriendProfile}'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Text('${friendsData.friendNameProfile}',
              style: TextStyle(
                color: Colour('#505050'),
                fontFamily: 'Segoe UI',
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}