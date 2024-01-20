// import 'dart:js_util';

import 'package:ecommerce_app/modules/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // List of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom FREAK!',
      price: '14300',
      desc: 'The forward-thinking design of his latest signature shoe',
      imagePath: 'lib/images/shoe2.jpeg',
    ),
    Shoe(
      name: 'Air Forces!',
      price: '8000',
      desc: 'The forward-thinking design of his latest signature shoe',
      imagePath: 'lib/images/shoe3.jpeg',
    ),
    Shoe(
      name: 'Air Jordan!',
      price: '9000',
      desc: 'The forward-thinking design of his latest signature shoe',
      imagePath: 'lib/images/shoe4.jpeg',
    ),
    Shoe(
      name: 'Zoom FREAK!',
      price: '16000',
      desc: 'The forward-thinking design of his latest signature shoe',
      imagePath: 'lib/images/shoe5.jpeg',
    ),
  ];

  // List of items in user cart
  List<Shoe> userCart = [];
  // get list of items for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
  }
}
