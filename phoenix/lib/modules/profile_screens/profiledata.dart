import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/modules/posts/postdata.dart';

Widget profileData(PostDataProfile postDataProfile,BuildContext context){
  return Column(
    children: [
      Container(
        width:88,
        height: 88,
        decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(50),
          border: Border.all(color:Colour('#008894'),width:3),
          image: DecorationImage(
            image:AssetImage('${postDataProfile.avatarUrlPostProfile}'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Text('${postDataProfile.postUserNameProfile}',
        style:TextStyle(
          fontFamily:'Segoe UI',
          fontSize: 16,
          fontWeight:FontWeight.bold,
          color:Colour('#505050'),
        ),
      ),
    ],
  );
}