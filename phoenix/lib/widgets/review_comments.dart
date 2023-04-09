

import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/models/reviewdata_model.dart';
Widget review(CommentReview commentsReview,BuildContext context){

  return SafeArea(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 8,
              ),
              child: Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(50),
                  image: DecorationImage(
                    image:AssetImage('${commentsReview.avatarUrl}'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              width:MediaQuery.of(context).size.width*0.03,
            ),
            Text('${commentsReview.userName}',
              style: TextStyle(
                color: Colour('#505050'),
                fontFamily: 'Segoe UI',
                fontSize:13,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
            width:MediaQuery.of(context).size.width*0.34,
            ),
            Text('${commentsReview.dateOfComment}',
              style: TextStyle(
                color: Colour('#5B5E60'),
                fontFamily: 'Segoe UI',
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 55,
            bottom: 10,
          ),
          child: Text('${commentsReview.bodyOfComment}',
            style: TextStyle(
              color: Colour('#505050'),
              fontFamily: 'Segoe UI',
              fontSize: 13,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ],
    ),
  );
}