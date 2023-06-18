


import 'package:flutter/cupertino.dart';

bool isDarkC = true;
String token = '';
bool isLikedButtonClicked= false;

void printFullText(String text) {
  final pattern = RegExp('.{1,800}');
  pattern.allMatches(text).forEach((element) => print(element.group(0)));
}
const String SERVER_URL = 'https://flutter-socket-io-chat.herokuapp.com/';

String getFileNameFromURL(String url, String symbol) => url.substring(url.lastIndexOf(symbol) + 1);
