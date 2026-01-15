class EndPoints {
  static final String baseUrl =
      "https://n2ctama7us.us-east-1.awsapprunner.com/v1/";

  static final String generateNewToken = "";

  //---------auth
  static final String login = "auth/login";
  static final String forgotPassword = "auth/forgot-password";
  static final String verify = "auth/verify";
  static final String updatePassword = "user/update-password";
  static final String registerPhotographer = "/auth/register/photographer";
  static final String deleteAccount = "user/removed-account";

  //----------booking
  static final String photographerBooking = "booking/list/photographer/";
  static final String photographerBookingDetails = "booking/details/";
  static final String photographerBookingStatus = "booking/update/";
  static String shareProject(String bookingId) => "booking/$bookingId/add-link";

  //-----------photographer profile
  static final String userProfile = "user/photographer/";
  static final String updatePhotographerProfile = "user/profile-update";
  static final String uploadProfileImage = "user/profile/upload";

  //----------collection
  static final String getAllCollection = "collection/photographer/";
  static final String addCollection = "collection/add";
  static final String getCollectionDetails = "collection/";
  static final String addImageToCollection = "collection/add-new-image/";
  static String deleteCollectionImage(String collectionId) =>
      "collection/$collectionId/remove-image";

  //-----------Rating
  static final String getRating = "review/photographer/";

  //-----------feedback
  static final String feedback = "user/sent-conatact-us-email";

  //------------calender
  static String setAvailability = "calender/photographer/";

  //---------------------------------------clint----------------------------//
  static final String clientRegister = "auth/register/client";
  static final String getAllPhotographer = "user/list/photographer";
  static final String getPhotographerDetails = "user/photographer/";

  static final String clientProfile = "user/profile/";
  static final String clientProfileUpdate = "user/profile-update";
  static final String clientProfileImage = "/user/profile/upload";
  static final String clientBookingList = "booking/list/client/";
  static final String commonBookingList = "booking/list/common/";

  static final String photographerBookingList = "booking/list/photographer/";

  static final String clientBookingDetail = "booking/details/";
  static final String clientReschedule = "booking/resechedule/";
  static final String editRequestBooking = "booking/update/";
  static final String bookingReschedule = "booking/resechedule/";
  static String getAvailableDays(String userId) =>
      "user/photographer/$userId/monthly-availability";
  static String updateNoEditDate(String userId) =>
      "/calender/photographer/$userId/delete-slots";
  static final String createBooking = "booking/create";
  //----------------------------------------payment photographer--------------------------//
  static String getPhotographerAllTransaction = "transaction/photographer/";
  static String getClientAllTransaction = "transaction/client/";

  static String getPhotographerAllWithdraw = "withdraw/list/photographer/";
  static String availableBalance = "withdraw/balence";
  static String photographerConnectToStripe = "photographer/connect-to-stripe";
  static String withdrawAmount = "withdraw/amount";
  static String myErningsEndPoint = "withdraw/photographer/";
  static String confirmBooking = "payment/checkout/upfront";
  static String ganarateRemaningPaymentEndPoint = "/payment/checkout/complete";

  //----------------------------------------payment--------------------------//
  static String connectToStripe = "user/connect-to-stripe/";

  static String addReview = "review/add";
}
