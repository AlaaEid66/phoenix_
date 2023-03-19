class StoryData{
  String? userName;
  String? avatarUrl;
  //String? storyUrl;

  StoryData(
    this.userName,
    this.avatarUrl,
    //this.storyUrl,
  );
}
class StoryDataProfile{
  String? userNameProfile;
  String? avatarUrlProfile;
  StoryDataProfile(
      this.userNameProfile,
      {this.avatarUrlProfile,}
      );
}