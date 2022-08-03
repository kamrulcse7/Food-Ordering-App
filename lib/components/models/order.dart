

import 'package:food_ordering_app/components/models/food.dart';
import 'package:food_ordering_app/components/models/restaurant.dart';

class Order {
  final Restaurant? restaurant;
  final Food? food;
  final String? date;
  final int? quantity;

  Order({
    this.date,
    this.restaurant,
    this.food,
    this.quantity,
  });
}
