import 'package:flutter/material.dart';
import 'package:colour/colour.dart';
import 'package:phoenix/widgets/shared/components/size_config.dart';
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
  required BuildContext context,
  FocusNode? focusNode,
  TextEditingController? controller,
  required TextInputType keyboardType,
  String? Function(String?)? validate,
  required String? hint,
  inputFormatters,
  onTap,
  maxLength,
  maxLines,
  onChanged,
  Function(String)? onFieldSubmitted,
  bool isPassword = false,
  bool isClickable = true,
  InputDecoration? decoration,
  IconData? suffix,
  IconData? prefix,
  Color? cursorColor,
  Function? suffixPressed,
  TextStyle? style,
  TextAlign? textAlign,
  bool? obscureText,
  TextInputAction? textInputAction, // Add a new parameter for text alignment
}){
  return Container(
    width: width(context, 1.3),
    height: height(context, 15),
    decoration: BoxDecoration(
      color: Colour('#EFEFEF'),
      borderRadius: BorderRadius.circular(10),
    ),
    child: TextFormField(
      focusNode: FocusNode(),
      style: TextStyle(
        color: Colour('#000000').withOpacity(0.4),
      ),
      maxLength: maxLength,
      maxLines: maxLines,
      controller: controller,
      validator: validate,
      enabled: isClickable,
      onTap: onTap,
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onChanged,
      obscureText: isPassword,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      autofocus: false,
      decoration: InputDecoration(
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null
            ? IconButton(
          onPressed: () {
            suffixPressed!();
          },
          icon: Icon(
            suffix,
          ),
        )
            : null,
        border: OutlineInputBorder(
          borderRadius:BorderRadius.circular(10),
        ),
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 18,
          color: Colour('#000000').withOpacity(0.4),
          fontFamily: 'Segoe UI',
          fontWeight: FontWeight.normal,
        ),
        contentPadding: const EdgeInsets.all(0),
      ),
    ),
  );
}

