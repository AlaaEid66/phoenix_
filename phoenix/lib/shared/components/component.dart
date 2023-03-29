import 'package:flutter/material.dart';
import 'package:colour/colour.dart';
Widget defButton({
  double height = 48,
  Color? backgroundColor,
  double width = 304,
  required Function()?pressed,
  required String? text,
  Color textColor =Colors.white,
  double border=15,
  double ?fontSize,
  FontWeight? fontWeight,
}){
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color:backgroundColor,
      borderRadius:BorderRadius.circular(border),
    ),
    child: MaterialButton(
      onPressed:pressed,
      child: Text(
        text!,
        style:TextStyle(
          color:textColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),

    ),
  );
}
Widget searchButton({
  double height=38,
  required double? width,
  Colour? colour,
  double border=10,
  double fontSize=16,
  String fontFamily='Segoe UI',
  FontWeight fontWeight= FontWeight.normal,
  Colour? textColour,
  required String? text,
  required void Function()?pressed,

}){
  return Container(
    width: width,
    height: height,
    decoration:BoxDecoration(
      borderRadius: BorderRadius.circular(border),
      color: Colour('#EFEFEF'),
    ),
    child:TextButton(
      child: Text(
        text!,
        style:TextStyle(
          fontSize: fontSize,
          fontFamily: fontFamily,
          fontWeight:fontWeight ,
          color:Colour('#505050'),
        ),
      ),
      onPressed:(){},
    ),
  );
}

Widget defaultFormField({
  TextEditingController ?controller,
  required Function validate,
  String ? label,
  IconButton ?prefix,
  IconButton? suffix,
  TextInputType? keyboard,
  BorderRadius ?border,
}){
  return Container(
    color: Colour('#EFEFEF'),
    child: TextFormField(
      controller: controller,
      keyboardType: keyboard!,
      decoration:InputDecoration(
        labelText: label!,
        prefixIcon: prefix!,
        suffixIcon: suffix,
        border: OutlineInputBorder(
          borderRadius: border!,
        ),
      ),
    ),
  );
}
