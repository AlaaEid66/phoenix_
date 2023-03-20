import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/modules/stories/storydata.dart';
import 'package:phoenix/shared/components/story.dart';
import 'postdata.dart';

Widget postPage(PostData postData,BuildContext context){
  List<StoryDataProfile> story=[
    StoryDataProfile(
      'YourStory',
      avatarUrlProfile: 'assets/images/s1.jpg',
    ),
  ];
  return SafeArea(
    child: Column(
      children: [
        Row(
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(50),
                image: DecorationImage(
                  image:AssetImage('${postData.avatarUrlPost}'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                Text('${postData.postUserName}'),
                Text('${postData.postDate}'),
              ],
            ),
            IconButton(
              onPressed:(){},
              color: Colour('#505050'),
              icon:  const Icon(Icons.more_horiz),
              iconSize: 18,
            ),
            IconButton(
              iconSize: 10,
              color: Colour('#505050'),
              onPressed:(){},
              icon:const Icon(Icons.close,
              ),
            ),
          ],
        ),
        Text('${postData.postBody}'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  icon:Icon(Icons.repeat,
                    size: 25,
                  ),
                  color: Colors.grey.shade500,
                  onPressed:(){} ,
                ),
                Text('25',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.favorite,color: Colors.red,),onPressed:(){},),
                Text('45',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(icon: Icon(Icons.mode_comment_outlined,color: Colors.grey.shade500,),onPressed:(){},),
                Text('15',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}