class AppUrls {
  static const String baseUrl = 'https://api.pharmlive.uz';

  static const String register = '$baseUrl/api/v1/account/register'; // post
  static const String checkSms =
      '$baseUrl/api/v1/account/check_sms_code'; // post
  static const String tokenRefresh =
      '$baseUrl/api/v1/account/token_refresh'; // post
  static const String profileUpdate =
      '$baseUrl/api/v1/account/profile_update'; // put
  static const String logOut = '$baseUrl/api/v1/account/logout'; // post
  static const String userTokenCheck =
      '$baseUrl/api/v1/account/user_token_check'; // post
  static const String deleteProfile =
      '$baseUrl/api/v1/account/profile_delete'; // delete
}
