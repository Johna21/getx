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

  // Retrieve data from wishList

List<Items> get wishListItems{
  return _items.where((item)=>item.inWishList.value == true ).toList();
}
// Add Items to wishList
void addItem(int id){
  final int index = _items.indexWhere((item) => item.id==id);
  _items[index].inWishList.value = true;
}

// Remove Items from WishList

void removeItem(int id){
  final int index = _items.indexWhere((item) => item.id == id);
  _items[index].inWishList.value = false;
}

}