class PostData{
  String? avatarUrlPost;
  String? postUserName;
  String? postDate;
  String? postBody;
  int? postComments;
  int? postLikes;
  String? postCaption;
  PostData(
      this.avatarUrlPost,
      this.postUserName,
      this.postDate,
      this.postBody,
      this.postComments,
      this.postLikes,
      this.postCaption,
      );
}
class PostDataProfile{
  String? avatarUrlPostProfile;
  String? postUserNameProfile;
  PostDataProfile(
      this.avatarUrlPostProfile,
      this.postUserNameProfile,
      );
}

