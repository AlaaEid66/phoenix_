import 'package:flutter/material.dart';
class DatePicker {
  String? startDate;
  double? width;
  double? height;
  TextStyle? monthTextStyle;
  TextStyle? dayTextStyle;
  TextStyle? dateTextStyle;
  Color? selectedTextColor;
  Color?  selectionColor;
  Color?  deactivatedColor;
  String? initialSelectedDate;
  String? activeDates;
  String? inactiveDates;
  Function? onDateChange;


  DatePicker(
      this.startDate,
      this.width,
      this.height,
      this.monthTextStyle,
      this.dayTextStyle,
      this.dateTextStyle,
      this.selectedTextColor,
      this.selectionColor,
      this.deactivatedColor,
      this.initialSelectedDate,
      this.activeDates,
      this.inactiveDates,
      this.onDateChange,
     // this.daysCount,// this.locale = "en_US",
 );
}