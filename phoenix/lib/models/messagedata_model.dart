class MessagesData{
  String? avatarUrl;
  String? userName;
  bool? isOnline;

  MessagesData(
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
