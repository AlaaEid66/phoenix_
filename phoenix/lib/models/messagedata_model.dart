//
//
// class OnlineUsersData{
//   String? avatarUrl;
//   String? userName;
//   bool? isOnline;
//
//   OnlineUsersData(
//       this.avatarUrl,
//       this.userName,
//       this.isOnline,
//   );
// }
//
// class MessageSentData{
//   String? avatarUrl;
//   String? userName;
//   bool? isOnline;
//   bool? read;
//   String? bodyOfMessages;
//   String? timeOfMessages;
//
//   MessageSentData(
//       this.avatarUrl,
//       this.userName,
//       this.isOnline,
//       this.read,
//       this.bodyOfMessages,
//       this.timeOfMessages
//       );
// }
//
// class VideoCallData{
//   String? doctorAvatar;
//   String? patientAvatar;
//   VideoCallData(
//       this.doctorAvatar,
//       this.patientAvatar,
//       );
// }
//
// class MessagesData{
//   String? get  id => _id;
//   String? from;
//   String? to;
//   DateTime? timeStamp;
//   String? contents;
//   String? _id;
//   MessagesData({
//     required this.from,
//     required this.to,
//     required this.timeStamp,
//     required this.contents,
//   }
//     );
//   toJson()=>{
//     'from': this.from,
//     'to': this.to,
//     'timeStamp': this.timeStamp,
//     'contents': this.contents,
//   };
//   factory MessagesData.fromJson(Map<String, dynamic> json){
//     var messages = MessagesData(
//       from: json['from'],
//       to: json['to'],
//       timeStamp: json['timeStamp'],
//       contents: json['contents'],
//
//     );
//     messages._id= json['id'];
//     return messages;
//   }
// }


class OnlineUserData{
  String? avatarUrl;
  String? userName;
  bool? isOnline;

  OnlineUserData(
      this.avatarUrl,
      this.userName,
      this.isOnline,
      );
}
class MessageSentData{
  String? avatarUrl;
  String? userName;
  bool? isOnline;
  bool? read;
  String? bodyOfMessages;
  String? timeOfMessages;

  MessageSentData(
      this.avatarUrl,
      this.userName,
      this.isOnline,
      this.read,
      this.bodyOfMessages,
      this.timeOfMessages
      );
}
class ChatUser{
  String? avatarUrl;
  String? userName;
  ChatUser(
      this.avatarUrl,
      this.userName,
      );
}
