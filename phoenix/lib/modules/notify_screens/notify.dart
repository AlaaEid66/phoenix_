import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'notification_data.dart';

Widget notifyLikeNew(NotifyData notifyData,BuildContext context){
  return Card(
    color:Colour('#EFEFEF'),
    child: Padding(
      padding: const EdgeInsets.all(6),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                ),
                child: Stack(
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(50),
                        image: DecorationImage(
                          image:AssetImage('${notifyData.avatarUrlNotify}'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 35,
                        left: 36,
                      ),
                      child:Container(
                        decoration:BoxDecoration(
                          color: Colour('#0700F5'),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width:25,
                        height: 25,
                        child: Icon(
                          Icons.thumb_up_alt_rounded,
                          size: 14,
                          color:Colour('#FFFFFF'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width:MediaQuery.of(context).size.width*0.03,
              ),
              Row(
                children: [
                  RichText(
                    textAlign:TextAlign.left,
                    text:TextSpan(
                      children:<TextSpan>[
                        TextSpan(
                          text:'${notifyData.notifyUserName}',
                          style: TextStyle(
                            color: Colour('#505050'),
                            fontSize:12,
                            fontFamily:'Segoe UI',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text:'${notifyData.notifyBody}',
                          style: TextStyle(
                            color: Colour('#505050'),
                            fontSize:12,
                            fontFamily:'Segoe UI',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                 const  SizedBox(
                    width: 50,
                  ),
                  IconButton(
                      onPressed:(){},
                      icon:const Icon(Icons.close),
                    color: Colour('#505050'),
                    iconSize: 15,
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 199,
              top: 0,
            ),
            child: Text('${notifyData.notifyDate}',
              style:TextStyle(
                fontFamily: 'Segoe UI',
                fontSize:12,
                fontWeight: FontWeight.normal,
                color: Colour('#505050'),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
Widget notifyCommentNew(NotifyData notifyData,BuildContext context){
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(6),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                ),
                child: Stack(
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(50),
                        image: DecorationImage(
                          image:AssetImage('${notifyData.avatarUrlNotify}'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 35,
                        left: 36,
                      ),
                      child:Container(
                        decoration:BoxDecoration(
                          color: Colour('#3FEE00'),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width:25,
                        height: 25,
                        child: Icon(
                          Icons.chat_bubble_rounded,
                          size: 15,
                          color:Colour('#FFFFFF'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width:MediaQuery.of(context).size.width*0.03,
              ),
              Row(
                children: [
                  RichText(
                    textAlign:TextAlign.left,
                    text:TextSpan(
                      children:<TextSpan>[
                        TextSpan(
                          text:'${notifyData.notifyUserName}',
                          style: TextStyle(
                            color: Colour('#505050'),
                            fontSize:12,
                            fontFamily:'Segoe UI',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text:'${notifyData.notifyBody}',
                          style: TextStyle(
                            color: Colour('#505050'),
                            fontSize:12,
                            fontFamily:'Segoe UI',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const  SizedBox(
                    width: 47,
                  ),
                  IconButton(
                    onPressed:(){},
                    icon:const Icon(Icons.close),
                    color: Colour('#505050'),
                    iconSize: 15,
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 199,
              top: 0,
            ),
            child: Text('${notifyData.notifyDate}',
              style:TextStyle(
                fontFamily: 'Segoe UI',
                fontSize:12,
                fontWeight: FontWeight.normal,
                color: Colour('#505050'),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
Widget notifyAddFriendNew(NotifyData notifyData,BuildContext context){
  return Card(
    color:Colour('#EFEFEF'),
    child: Padding(
      padding: const EdgeInsets.only(
        top: 6,
        left: 2,
        right: 2,
        bottom: 6,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                ),
                child: Stack(
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(50),
                        image: DecorationImage(
                          image:AssetImage('${notifyData.avatarUrlNotify}'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 35,
                        left: 36,
                      ),
                      child:Container(
                        decoration:BoxDecoration(
                          color: Colour('#1CDBF9'),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width:25,
                        height: 25,
                        child: Icon(
                          Icons.person_add,
                          size: 14,
                          color:Colour('#FFFFFF'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width:MediaQuery.of(context).size.width*0.03,
              ),
              Row(
                children: [
                  RichText(
                    textAlign:TextAlign.left,
                    text:TextSpan(
                      children:<TextSpan>[
                        TextSpan(
                          text:'${notifyData.notifyUserName}',
                          style: TextStyle(
                            color: Colour('#505050'),
                            fontSize:12,
                            fontFamily:'Segoe UI',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text:'${notifyData.notifyBody}',
                          style: TextStyle(
                            color: Colour('#505050'),
                            fontSize:12,
                            fontFamily:'Segoe UI',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const  SizedBox(
                    width: 80,
                  ),
                  IconButton(
                    onPressed:(){},
                    icon:const Icon(Icons.close),
                    color: Colour('#505050'),
                    iconSize: 15,
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 140,
              top:00,
            ),
            child: Text('${notifyData.notifyDate}',
              style:TextStyle(
                fontFamily: 'Segoe UI',
                fontSize:12,
                fontWeight: FontWeight.normal,
                color: Colour('#505050'),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget notifyLikeEarlier(NotifyData notifyData,BuildContext context){
  return Card(
    color:Colour('#EFEFEF'),
    child: Padding(
      padding: const EdgeInsets.all(6),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                ),
                child: Stack(
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(50),
                        image: DecorationImage(
                          image:AssetImage('${notifyData.avatarUrlNotify}'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 35,
                        left: 36,
                      ),
                      child:Container(
                        decoration:BoxDecoration(
                          color: Colour('#0700F5'),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width:25,
                        height: 25,
                        child: Icon(
                          Icons.thumb_up_alt_rounded,
                          size: 14,
                          color:Colour('#FFFFFF'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width:MediaQuery.of(context).size.width*0.03,
              ),
              Row(
                children: [
                  RichText(
                    textAlign:TextAlign.left,
                    text:TextSpan(
                      children:<TextSpan>[
                        TextSpan(
                          text:'${notifyData.notifyUserName}',
                          style: TextStyle(
                            color: Colour('#505050'),
                            fontSize:12,
                            fontFamily:'Segoe UI',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text:'${notifyData.notifyBody}',
                          style: TextStyle(
                            color: Colour('#505050'),
                            fontSize:12,
                            fontFamily:'Segoe UI',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const  SizedBox(
                    width: 50,
                  ),
                  IconButton(
                    onPressed:(){},
                    icon:const Icon(Icons.close),
                    color: Colour('#505050'),
                    iconSize: 15,
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 170,
              top: 0,
            ),
            child: Text('${notifyData.notifyDate}',
              style:TextStyle(
                fontFamily: 'Segoe UI',
                fontSize:12,
                fontWeight: FontWeight.normal,
                color: Colour('#505050'),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
Widget notifyCommentEarlier(NotifyData notifyData,BuildContext context){
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(6),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                ),
                child: Stack(
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(50),
                        image: DecorationImage(
                          image:AssetImage('${notifyData.avatarUrlNotify}'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 35,
                        left: 36,
                      ),
                      child:Container(
                        decoration:BoxDecoration(
                          color: Colour('#3FEE00'),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width:25,
                        height: 25,
                        child: Icon(
                          Icons.chat_bubble_outlined,
                          size: 15,
                          color:Colour('#FFFFFF'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width:MediaQuery.of(context).size.width*0.03,
              ),
              Row(
                children: [
                  RichText(
                    textAlign:TextAlign.left,
                    text:TextSpan(
                      children:<TextSpan>[
                        TextSpan(
                          text:'${notifyData.notifyUserName}',
                          style: TextStyle(
                            color: Colour('#505050'),
                            fontSize:12,
                            fontFamily:'Segoe UI',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text:'${notifyData.notifyBody}',
                          style: TextStyle(
                            color: Colour('#505050'),
                            fontSize:12,
                            fontFamily:'Segoe UI',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const  SizedBox(
                    width: 47,
                  ),
                  IconButton(
                    onPressed:(){},
                    icon:const Icon(Icons.close),
                    color: Colour('#505050'),
                    iconSize: 15,
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 170,
              top: 0,
            ),
            child: Text('${notifyData.notifyDate}',
              style:TextStyle(
                fontFamily: 'Segoe UI',
                fontSize:12,
                fontWeight: FontWeight.normal,
                color: Colour('#505050'),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
Widget notifyAddFriendEarlier(NotifyData notifyData,BuildContext context){
  return Card(
    color:Colour('#EFEFEF'),
    child: Padding(
      padding: const EdgeInsets.only(
        top: 6,
        left: 2,
        right: 2,
        bottom: 6,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                ),
                child: Stack(
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(50),
                        image: DecorationImage(
                          image:AssetImage('${notifyData.avatarUrlNotify}'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 35,
                        left: 36,
                      ),
                      child:Container(
                        decoration:BoxDecoration(
                          color: Colour('#1CDBF9'),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width:25,
                        height: 25,
                        child: Icon(
                          Icons.person_add,
                          size: 14,
                          color:Colour('#FFFFFF'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width:MediaQuery.of(context).size.width*0.03,
              ),
              Row(
                children: [
                  RichText(
                    textAlign:TextAlign.left,
                    text:TextSpan(
                      children:<TextSpan>[
                        TextSpan(
                          text:'${notifyData.notifyUserName}',
                          style: TextStyle(
                            color: Colour('#505050'),
                            fontSize:12,
                            fontFamily:'Segoe UI',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text:'${notifyData.notifyBody}',
                          style: TextStyle(
                            color: Colour('#505050'),
                            fontSize:12,
                            fontFamily:'Segoe UI',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const  SizedBox(
                    width: 80,
                  ),
                  IconButton(
                    onPressed:(){},
                    icon:const Icon(Icons.close),
                    color: Colour('#505050'),
                    iconSize: 15,
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 174,
              top:00,
            ),
            child: Text('${notifyData.notifyDate}',
              style:TextStyle(
                fontFamily: 'Segoe UI',
                fontSize:12,
                fontWeight: FontWeight.normal,
                color: Colour('#505050'),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}