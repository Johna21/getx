import 'dart:math';

import 'package:get/get.dart';
import 'package:getxstate/models/items.dart';


class Products extends GetxController{
  // All prduct lists
  final RxList<Items> _items = List.generate(100, 
  (index) => Items(
    id: index, 
    inWishList: false.obs, 
    name: 'Product $index', 
    price: Random().nextDouble()*100)).obs;

// Retrieve all items
  List<Items> get items{
    return [..._items];
  }

List

}