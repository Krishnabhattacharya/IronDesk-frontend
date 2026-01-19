class UserTokenUpdate {
  List<String>? deviceTokens;

  UserTokenUpdate({this.deviceTokens});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['deviceTokens'] = deviceTokens;
    return data;
  }
}
