import 'package:api_test/core/api/end_points.dart';

class UserModel {
  final String profilePic;
  final String email;
  final String phone;
  final String name;
  final Map<String, dynamic> location;

  UserModel(
      {required this.profilePic,
      required this.email,
      required this.phone,
      required this.name,
      required this.location});

  factory UserModel.fromJson(Map<String, dynamic> jsonData) {
    return UserModel(
      profilePic: jsonData[ApiKey.profilePic],
      email: jsonData[ApiKey.email],
      phone: jsonData[ApiKey.phone],
      name: jsonData[ApiKey.name],
      location: jsonData[ApiKey.location],
    );
  }
}
