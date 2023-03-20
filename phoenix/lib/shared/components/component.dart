import 'package:flutter/material.dart';
import 'package:colour/colour.dart';
Widget defButton({
  double height = 48,
  Color? backgroundColor,
  double width = 304,
  required void Function()?pressed,
  required String? text,
  Color textColor =Colors.white,
  double border=15,
  double ?fontSize,
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
        ),
      ),

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
