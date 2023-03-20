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
                  image:AssetImage('${postData.avatarUrlPost}'),
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
                Text('${postData.postUserName}'),
                SizedBox(
                  height:MediaQuery.of(context).size.height*0.0001,
                ),
                Text('${postData.postDate}'),
              ],
            ),
            const SizedBox(
              width:148,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
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
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text('${postData.postBody}',
            style: TextStyle(
              textBaseline: TextBaseline.alphabetic,
              fontFamily: 'Segoe UI',
              fontSize: 15,
              fontWeight:FontWeight.normal,
              color:Colour('#505050'),
            ),
          ),
        ),
        Padding(
          padding:const EdgeInsets.only(
            left: 14,
            right: 10,
          ),
          child: Divider(
            height: 1,
            color: Colors.blueGrey.shade500,
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                IconButton(
                  icon:const Icon(Icons.thumb_up_alt_rounded,
                    size: 20,
                  ),
                  color: Colour('#505050'),
                  onPressed:(){} ,
                ),
                Text('Like',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Segoe UI',
                    color:Colour('#505050'),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  icon:  Icon(Icons.edit_note_rounded,
                    color:Colour('#505050') ,
                  ),
                  onPressed:(){},),
                Text('Comment',
                  style: TextStyle(
                    color:Colour('#505050'),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Segoe UI',
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  icon:  Icon(Icons.share,
                    color:Colour('#505050') ,
                  ),
                  onPressed:(){},),
                Text('Share',
                  style: TextStyle(
                    color:Colour('#505050'),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Segoe UI',
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