part of 'models.dart';

class UserModels {
  final int id;
  final String name;
  final String email;
  final String address;
  final String phoneNumber;
  final String city;
  final String picturePath;

  UserModels(
      {this.id,
      this.name,
      this.email,
      this.address,
      this.phoneNumber,
      this.city,
      this.picturePath});
}

UserModels mockUser = UserModels(
  id: 1,
  name: 'Jane Karen',
  address: 'Jalan 123 Bogor Selatan',
  phoneNumber: '0852-1234-1234',
  city: 'Bogor',
  picturePath:
      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80',
);
