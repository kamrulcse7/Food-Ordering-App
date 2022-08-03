import 'package:food_ordering_app/components/models/order.dart';

class User {
  final String? name;
  final List<Order>? orders;
  final List<Order>? cart;

  User({
    this.name,
    this.orders,
    this.cart,
  });
}
