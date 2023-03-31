import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
class SavedData{
  String? savedUrl;
  String? savedName;
  String? savedType;
  String? savedUserName;
  String? dateLauncher;
  SavedData(
      this.savedUrl,
      this.savedName,
      this.savedType,
      this.savedUserName,
     this.dateLauncher,
      );
}

Widget savedData2(SavedData savedData,BuildContext context){
  return Row(
    children: [
     Container(
       width:133,
       height: 92,
       decoration: BoxDecoration(
         borderRadius:BorderRadius.circular(50),
         image: DecorationImage(
           image:AssetImage('${savedData.savedUrl}'),
           fit: BoxFit.cover,
         ),
       ),
     ),
      const SizedBox(
        width: 24,
      ),
      Column(
        children: [
          Text('${savedData.savedName}',
            style: TextStyle(
              color: Colour('#505050'),
              fontWeight: FontWeight.bold,
              fontSize: 14,
              fontFamily: 'Segoe UI',
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Row(
            children: [
              Text('${savedData.savedType}',
                style: TextStyle(
                  color: Colour('#505050'),
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                  fontFamily: 'Segoe UI',
                ),
              ),
             const SizedBox(
                width: 3,
              ),
              Text('${savedData.savedUserName}',
                style: TextStyle(
                  color: Colour('#505050'),
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                  fontFamily: 'Segoe UI',
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 8,
          ),
          Text('${savedData.dateLauncher}',
            style: TextStyle(
              color: Colour('#505050'),
              fontWeight: FontWeight.normal,
              fontSize: 14,
              fontFamily: 'Segoe UI',
            ),
          ),
        ],
      ),
    ],
  );
}

