import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/shared/components/consts.dart';
import 'postdata.dart';

Widget postWritten(PostData postData,BuildContext context){
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
                  height:MediaQuery.of(context).size.height*0.001,
                ),
                Text('${postData.postDate}'),
              ],
            ),
            SizedBox(
              width:MediaQuery.of(context).size.width*0.3,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 12,
                  ),
                  child: IconButton(
                    onPressed:(){},
                    color: Colour('#505050'),
                    icon:  const Icon(Icons.more_horiz),
                    iconSize: 24,
                  ),
                ),
                IconButton(
                  iconSize: 20,
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
            textAlign:TextAlign.left,
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
Widget postImage(PostData postData,BuildContext context){
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
                  height:MediaQuery.of(context).size.height*0.001,
                ),
                Text('${postData.postDate}'),
              ],
            ),
            SizedBox(
              width:MediaQuery.of(context).size.width*0.29,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 9,
                  ),
                  child: IconButton(
                    onPressed:(){},
                    color: Colour('#505050'),
                    icon:  const Icon(Icons.more_horiz),
                    iconSize: 24,
                  ),
                ),
                IconButton(
                  iconSize: 20,
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
          padding: const  EdgeInsets.all(20),
          child: Image.asset('${postData.postBody}'),
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
Widget postVideos(PostData postData,BuildContext context){
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
            SizedBox(
              width:MediaQuery.of(context).size.width*0.3,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left:12,
                  ),
                  child: IconButton(
                    onPressed:(){},
                    color: Colour('#505050'),
                    icon:  const Icon(Icons.more_horiz),
                    iconSize: 24,
                  ),
                ),
                IconButton(
                  iconSize: 20,
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
          padding: const  EdgeInsets.all(20),
          child: Image.asset('${postData.postBody}'),
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
                  color: isLikedButtonClicked?Colors.blue:Colour('#505050'),
                  onPressed:(){
                    isLikedButtonClicked=!isLikedButtonClicked;
                  } ,
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

Widget writePost(PostDataProfile postDataProfile,BuildContext context){
  return  Row(
    children: [
      Container(
        width:40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(50),
          image: DecorationImage(
            image:AssetImage('${postDataProfile.avatarUrlPostProfile}'),
            fit: BoxFit.cover,
          ),
        ),
      ),
     const SizedBox(
        width: 9,
      ),
      Text('${postDataProfile.postUserNameProfile}',
        style:TextStyle(
          fontFamily:'Segoe UI',
          fontSize: 18,
          fontWeight:FontWeight.w600,
          color:Colour('#505050'),
        ),
      ),
    ],
  );
}