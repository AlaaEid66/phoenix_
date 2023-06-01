import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/layout/profile_screens/profile.dart';
import 'package:phoenix/models/postdata_model.dart';
import 'package:phoenix/widgets/shared/components/size_config.dart';

Widget profileData(PostDataProfile postDataProfile,BuildContext context){
  return Column(
    children: [
      MaterialButton(
        onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>Profile())),
        child: Container(
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

Widget profilePage(PostDataProfile postDataProfile,BuildContext context){
  return  Padding(
    padding: const EdgeInsetsDirectional.only(
      top: 26
    ),
    child: Stack(
        children: <Widget>[
          Stack(
            children: [
              Container(
                color: Colour('#C5C5C5'),
                height: 132,
                width: double.infinity,

              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  top: 80,
                  start: 350
                ),
                child: Container(
                  height: 32,
                  width: 32,
                  child: FloatingActionButton(
                    backgroundColor: Colour('#EFEFEF'),
                    onPressed: (){},
                    child: Center(
                      child: Icon(
                        Icons.camera_alt,
                        color:Colour('#5B5E60'),
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 1,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  top: 83,
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                        start: 25,
                      ),
                      child: Container(
                        width:92,
                        height: 92,
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(50),
                          border: Border.all(color:Colour('#008894'),width:3),
                          image: DecorationImage(
                            image:AssetImage('${postDataProfile.avatarUrlPostProfile}'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                        top: 60,
                        start: 80
                      ),
                      child: Container(
                        height: 32,
                        width: 32,
                        child: FloatingActionButton(
                          backgroundColor: Colour('#EFEFEF'),
                          onPressed: (){},
                          child: Center(
                            child: Icon(
                              Icons.camera_alt,
                              color:Colour('#5B5E60'),
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  top: 140,
                  start: 160,
                ),
                child: Material(
                  color: Colour('#008894'),
                  borderRadius: BorderRadius.circular(10),
                  child: MaterialButton(
                    onPressed: () {},
                    minWidth: 96,
                    height: 36,
                    child: Text(
                      'Edit profile',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colour('#FFFFFF'),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Segoe UI'
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              top: 190,
              start: 24
            ),
            child: Text('${postDataProfile.postUserNameProfile}',
              style:TextStyle(
                fontFamily:'Segoe UI',
                fontSize: 20,
                fontWeight:FontWeight.bold,
                color:Colour('#505050'),
              ),
            ),
          ),




        ],


    ),
  );
}