//
//
// import 'package:imei_scanner/core/local_source/local_source.dart';
//
// mixin CacheMixin {
//   final localSource = LocalSource();
//
//   void setUserInfo({
//     required String name,
//     required String login,
//     required String email,
//     required String phoneNumber,
//     required String id,
//     required String birth,
//     required String gender,
//     required String image,
//   }) {
//     localSource
//       ..setHasUserProfile(true)
//       ..setUserName(name)
//       ..setUserLogin(login)
//       ..setUserEmail(email)
//       ..setUserPhoneNumber(phoneNumber)
//       ..setUserId(id)
//       ..setUserBirth(birth)
//       ..setUserGender(gender)
//       ..setUserImage(image);
//   }
//
//   void setUserImage({required String userImage}) {
//     localSource.setUserImage(userImage);
//   }
//
//   void updateUserInfo({
//     required String name,
//     required String lastName,
//     required String email,
//     required String phoneNumber,
//   }) {
//     localSource
//       ..setHasUserProfile(true)
//       ..setUserName('$name $lastName')
//       ..setUserEmail(email)
//       ..setUserPhoneNumber(phoneNumber);
//   }
// }
