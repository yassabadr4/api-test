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
      profilePic: jsonData['user'][ApiKey.profilePic],
      email: jsonData['user'][ApiKey.email],
      phone: jsonData['user'][ApiKey.phone],
      name: jsonData['user'][ApiKey.name],
      location: jsonData['user'][ApiKey.location],
    );
  }
}
