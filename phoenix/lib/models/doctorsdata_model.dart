
class DoctorsData{
  String? doctorUrlAvatar;
  String? doctorName;
  String? doctorDesc;

  DoctorsData(
      this.doctorUrlAvatar,
      this.doctorName,
      this.doctorDesc,
      );
}
class DoctorsDataProfile{
  double? doctorRating;
  String? doctorUrlAvatarProfile;
  String? doctorNameProfile;
  String? doctorDescProfile;


  DoctorsDataProfile(
    this.doctorRating,
    this.doctorUrlAvatarProfile,
    this.doctorNameProfile,
    this.doctorDescProfile,

  );
}



class DoctorsDataPage{
  String? doctorUrlAvatarProfile;
  String? doctorNameProfile;
  String? doctorDescProfile;
  double? doctorRating;
  String? doctorEmail;
  double? doctorPhone;

  DoctorsDataPage(
      this.doctorRating,
      this.doctorUrlAvatarProfile,
      this.doctorNameProfile,
      this.doctorDescProfile,
      this.doctorEmail,
      this.doctorPhone,
      );
}
class DoctorsDetails{
   int? yearExperience;
   int? numOfHospitals;
   String? placesOfWork;

  DoctorsDetails(
      this.yearExperience,
      this.numOfHospitals,
      this.placesOfWork,
      );
}