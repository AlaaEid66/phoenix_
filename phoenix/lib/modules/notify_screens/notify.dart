import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'notification_data.dart';

Widget notifyPage(NotifyData notifyData,BuildContext context){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Stack(
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
                  color: Colour('#0700F5'),
                  width:18,
                  height: 18,
                  child: const Icon(
                    Icons.thumb_up_alt_rounded,
                    size: 12,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width:MediaQuery.of(context).size.width*0.03,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
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
      Text('${notifyData.notifyDate}',
        style:TextStyle(
          fontFamily: 'Segoe UI',
          fontSize:10,
          fontWeight: FontWeight.normal,
          color: Colour('#505050'),
        ),
      ),
    ],
  );
}