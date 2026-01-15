class LoginRequestModel {
  String? email;
  String? password;

  LoginRequestModel({this.email, this.password});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    return data;
  }
}

class LoginResponseModel {
  bool? isSuccess;
  String? message;
  LoginData? data;

  LoginResponseModel({this.isSuccess, this.message, this.data});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    isSuccess = json['success'];
    message = json['message'];
    data = json['data'] != null ? LoginData.fromJson(json['data']) : null;
  }
}

class LoginData {
  User? user;
  String? accessToken;
  String? refreshToken;

  LoginData({this.user, this.accessToken, this.refreshToken});

  LoginData.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    accessToken = json['access_token']; // Guessing key names
    refreshToken = json['refresh_token'];
  }
}

class User {
  String? id;
  String? role;
  String? name;
  String? email;

  User({this.id, this.role, this.name, this.email});

  User.fromJson(Map<String, dynamic> json) {
    id = json['_id'] ?? json['id'];
    role = json['role'];
    name = json['name'];
    email = json['email'];
  }
}
