import 'package:hive/hive.dart';
import 'package:imei_scanner/constants/constants.dart';
import 'package:imei_scanner/core/utils/base_utils.dart';

class LocalSource {
  final Box<dynamic> box;

  LocalSource(this.box);

  Future<void> clear() async {
    final String pinCode = box.get(AppKeys.pinCode, defaultValue: '');
    await box.clear();
    box.put(AppKeys.pinCode, pinCode);
    return;
  }

  void setPinCode(String pinCode) {
    box.put(AppKeys.pinCode, pinCode);
  }

  String get pinCode {
    return box.get(AppKeys.pinCode, defaultValue: '');
  }

  void setBio(bool locale) {
    box.put(AppKeys.biometrics, locale);
  }

  bool get hasBio {
    return box.get(AppKeys.biometrics, defaultValue: false);
  }

  void setLocale(String locale) {
    box.put(AppKeys.locale, locale);
  }

  String get locale => box.get(
        AppKeys.locale,
        defaultValue: BaseFunctions.getDefaultLocale(),
      );

  void setAccessToken(String accessToken) {
    box.put(AppKeys.accessToken, accessToken);
  }

  String? getAccessToken() {
    return box.get(AppKeys.accessToken);
  }

  void setUserName(String firstName) {
    box.put(AppKeys.userName, firstName);
  }

  String getUserName() {
    return box.get(AppKeys.userName, defaultValue: "");
  }

  void setUserLogin(String lastName) {
    box.put(AppKeys.login, lastName);
  }

  String getUserLogin() {
    return box.get(AppKeys.login, defaultValue: "");
  }

  void setUserEmail(String email) {
    box.put(AppKeys.email, email);
  }

  String getUserEmail() {
    return box.get(AppKeys.email, defaultValue: "");
  }

  void setUserPassword(String password) {
    box.put(AppKeys.password, password);
  }

  String? getUserPassword() {
    return box.get(AppKeys.password);
  }

  void setHasUserProfile(bool auth) {
    box.put(AppKeys.hasProfile, auth);
  }

  bool get hasUserProfile => box.get(AppKeys.hasProfile, defaultValue: false);

  void setUserPhoneNumber(String phone) {
    box.put(AppKeys.phone, phone);
  }

  String? getUserImage() {
    return box.get(AppKeys.image);
  }

  String? getUserPhoneNumber() {
    return box.get(AppKeys.phone);
  }

  void setEtmAuthKey(String etmAuthKey) {
    box.put(AppKeys.etmAuthKey, etmAuthKey);
  }

  String? getEtmAuthKey() {
    return box.get(AppKeys.etmAuthKey);
  }

  /// for user information
  Future<String?> setUserId(String id) async {
    await box.put(AppKeys.userId, id);
  }

  String getUserId() {
    return box.get(AppKeys.userId);
  }

  Future<void> setUserBirth(String birth) async {
    await box.put(AppKeys.userBirth, birth);
  }

  Future<void> setUserGender(String gender) async {
    await box.put(AppKeys.userGender, gender);
  }

  void setUserImage(String image) {
    box.put(AppKeys.image, image);
  }
}
