class AppConstants {
/*   NOTE: default value of this variable is fasle for (production,development) 
  but when we want to access real users( bypass method ) thatime we need to 
  change to true. */
  static bool isBypassUser = false;
  static bool isInBackground = false;
  static bool isDevMode = false;
  static bool isProdMode = false;
  static bool mode = isProdMode == true ? (isDevMode = false) : false;
  /* ----------------------------------------------------------------------- */
  // PRODUCTION URL & DEVELOPMENT URL
  static String baseUrl = isProdMode
      ? "https://" //PROD URL
      : "https://"; //DEV URL

  // value{dev/prod/betatest} // this is used for health report genaration
  static String buildType = isProdMode ? "prod" : "dev";
  /* ------------------------------------------------------------------------- */

  static String? activityPlaceholder;
  static String noImgLink = activityPlaceholder =
      "https://t4.ftcdn.net/jpg/04/73/25/49/360_F_473254957_bxG9yf4ly7OBO5I0O5KABlN930GwaMQz.jpg";

  static String userId = "";
  static String token = "";

  //CMS Section
  static const String privacyPolicyUrl = 'https://';
  static const String termConditionUrl = 'https://';
  static const String contactUsUrl = 'https://';

  static const String userRememberMeEmail = 'userRememberMeEmail';
  static const String userRememberMePassword = 'userRememberMePassword';
  static const String userIdPref = 'userIdPref';
  static const String usertokenpref = 'usertokenpref';
  static const String userReftokenpref = 'userReftokenpref';
}
