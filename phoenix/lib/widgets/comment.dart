
import 'package:phoenix/models/commentsdata_model.dart';
import 'package:flutter/material.dart';
Widget comment(CommentsData commentsData,BuildContext context){
  return SafeArea(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(50),
                image: DecorationImage(
                  image:AssetImage('${commentsData.avatarProfile}'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width:MediaQuery.of(context).size.width*0.03,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  child: Column(
                    children: [
                      Text('${commentsData.userName}'),
                      SizedBox(
                        height:MediaQuery.of(context).size.height*0.0001,
                      ),
                      Text('${commentsData.commentContent}'),
                    ],
                  ),
                ),
                SizedBox(
                  height:MediaQuery.of(context).size.height*0.0001,
                ),
                Row(
                  children: [
                    Text('${commentsData.dataComment}'),
                    Text('${commentsData.numOfReact}'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}