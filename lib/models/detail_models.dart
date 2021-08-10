part of 'models.dart';

class Details {
  bool error;
  String message;
  Restaurant restaurant;

  Details({
    this.error,
    this.message,
    this.restaurant,
  });

  factory Details.fromJson(Map<String, dynamic> json) => Details(
        error: json["error"],
        message: json["message"],
        restaurant: Restaurant.fromJson(json["restaurant"]),
      );

  Map<String, dynamic> toJson() => {
        "error": error,
        "message": message,
        "restaurant": restaurant.toJson(),
      };
}
