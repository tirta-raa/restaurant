part of 'models.dart';

enum TransactionStatus { booked, pending, cancelled }

class TrasnsactionModels {
  final int id;
  final RestaurantModels restaurant;
  final int quantity;
  final DateTime dateTime;
  final TransactionStatus status;
  final UserModels user;

  TrasnsactionModels(
      {this.id,
      this.restaurant,
      this.quantity,
      this.dateTime,
      this.status,
      this.user});
}

List<TrasnsactionModels> mockTransactions = [
  TrasnsactionModels(
    id: 1,
    restaurant: mockRestaurant[1],
    quantity: 2,
    dateTime: DateTime.now(),
    status: TransactionStatus.booked,
  ),
  TrasnsactionModels(
    id: 2,
    restaurant: mockRestaurant[2],
    quantity: 4,
    dateTime: DateTime.now(),
    status: TransactionStatus.cancelled,
  ),
  TrasnsactionModels(
    id: 3,
    restaurant: mockRestaurant[3],
    quantity: 2,
    dateTime: DateTime.now(),
    status: TransactionStatus.pending,
  ),
];
