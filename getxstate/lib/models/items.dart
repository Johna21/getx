import 'package:get/get.dart';

class Items {

  int id;
  String name;
  double price;
  RxBool inWishList;

  Items({
    required this.id,
    required this.inWishList,
    required this.name,
    required this.price});

}