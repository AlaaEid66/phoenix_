import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
class GroupData{
  String? groupedUrl;
  String? groupedName;
  GroupData(
      this.groupedUrl,
      this.groupedName,
      );
}

Widget grouped(GroupData groupData,BuildContext context){
  return Column(
    children: [
      const SizedBox(
        height: 46,
      ),
      Container(
        width:152,
        height: 108,
        decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(0),
          image: DecorationImage(
            image:AssetImage('${groupData.groupedUrl}'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      const SizedBox(
        height: 8,
      ),
      Container(
        width: 152,
        height: 40,
        decoration: BoxDecoration(
          color: Colour('#F0FBFC'),
          borderRadius:BorderRadius.circular(10)
        ),
        child: Center(
          child: TextButton(
            onPressed:(){},
            child: Text('${groupData.groupedName}',
              style: TextStyle(
                color: Colour('#008894'),
                fontWeight: FontWeight.w600,
                fontSize: 14,
                fontFamily: 'Segoe UI',
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

