part of 'models.dart';

class UserModels {
  final int id;
  final String name;
  final String email;
  final String address;
  final String phoneNumber;
  final String picturePath;

  UserModels(
      {this.id,
      this.name,
      this.email,
      this.address,
      this.phoneNumber,
      this.picturePath});
}
