import 'package:flutter/material.dart';

class Constants {
  static const String baseUrl = 'https://stage.ets.run/api';
  static const String baseUrlMiddlewareUrl = 'https://ofs.u-code.io/function';
  static const String login = 'https://stage.ets.run/api/login';
  static const String offers = 'https://ofs.u-code.io/function/ets3-avia';
  static const String getTicketsListUrl = 'https://ofs.u-code.io/function/ets3-test';
  static const String getCountry = 'https://ofs.u-code.io/function/ets3-airlines';
  static const String baseUrlAuth = 'https://api.auth.u-code.io';
  static const String baseUserLocation = 'http://ip-api.com/json/';
  static const String featuredListId = 'd599bbe5-8c54-4ac4-a785-335008e19c15';
  static const String hallsListId = '48ec96b8-38f8-4a65-a75a-01438fcb9f51';
  static const String projectId = '748dcc93-32cd-4727-9d72-3e3c12624394';
  static const String projectId2 = '6eb3b2f4-8ef7-47e7-833f-15eba813cee7';
  static const String environmentId = 'a4f35020-3ee7-4265-bd42-3bbed08b5601';
  static const String resourceId = 'bd8b6516-d5f7-4a08-b7de-2d79ba6156e0';
  static const String baseUrlGetCountry = 'https://test.admin.api.u-code.io/';
  static const String baseCheckNumber = 'https://test.auth.api.u-code.io';
  static const String registerTicket = 'https://stage.ets.run/api/air/orders';
  static const String baseUcodeUrl = 'https://api.admin.u-code.io';
}

class Validations {
  static const emailEmpty = 'Email cannot be empty';
  static const notEmail = 'This is not email';
  static const passwordEmpty = 'Password cannot be empty';
  static const passwordShort = 'Password too short';
  static const passwordLong = 'Password too long';
  static const firstNameEmpty = 'Firstname cannot be empty';
  static const firstNameShort = 'Firstname too short';
  static const firstNameLong = 'Firstname too long';
  static const lastNameEmpty = 'Last name cannot be empty';
  static const lastNameShort = 'Lastname too short';
  static const lastNameLong = 'Lastname too long';
  static const passwordNotMatch = 'Passwords do not match';
  static const internetFailure = 'No Internet';
  static const somethingWentWrong = 'Something went wrong!';
}

class AppKeys {
  static const locale = 'locale';
  static const accessToken = 'access_token';
  static const userName = 'user_name';
  static const userBirth = 'user_birth';
  static const userGender = 'user_gender';
  static const userId = 'user_id';
  static const login = 'login';
  static const email = 'email';
  static const phone = 'phone';
  static const image = 'image';
  static const etmAuthKey = 'etmAuthKey';
  static const isFaceBook = 'etmAuthKey';

  static const password = 'password';
  static const pinCode = 'pinCode';
  static const biometrics = 'biometrics';
  static const hasProfile = 'auth';
}

class CacheKeys {
  static const String countries = 'countries';
  static const String lounge = 'lounge';
  static const String hall = 'hall';
  static const String allAirports = 'allAirports';
  static const String userLocation = 'userLocation';
}

class Urls {
  static const signInUrl = '/ets-user-registration';
  static const signUpUrl = '/ets-verify-user';
  static const registerEmailOtp = '/v2/register-email-otp';
  static const getCategoryListUrl = '/v1/categories/';
  static const getGuidListUrl = '/v1/guides/';
  static const getArticleUrl = '/v1/articles/';
  static const getObject = '/v1/object';
  static const getAirlines = '/air/airlines';
  static const getCountryListUrl = '/v1/object/get-list/country?project-id=6eb3b2f4-8ef7-47e7-833f-15eba813cee7';
  static const logInUrl = '/v2/';
  static const confirmUrl = '/ets-confirm-otp';
  static const countryListUrl = '/v1/object/get-list/country';
  static const userInfo = '/v1/object/web_users';
  static const uploadPhoto = '/v1/upload';
}

class DatabaseKeys {
  static const featuredList = 'featured_list';
  static const getList = 'get-list';
  static const sendMessage = 'send-message';
}

class TableSlugs {
  static const String building = '/building';
  static const String place = '/place';
  static const String user = '/users';
  static const String placeGallery = '/place_gallery';
  static const String placeFeature = '/place_feature';
  static const String country = '/country';
}

class AppConstants {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static GlobalKey<ScaffoldState> mainKey = GlobalKey<ScaffoldState>();
  static GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =GlobalKey<ScaffoldMessengerState>();
}
