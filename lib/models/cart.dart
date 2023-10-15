import 'package:flutter/material.dart';
import 'package:flutter_rizal/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoe for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: "Jumpman Black",
      price: "236",
      description: "Legend Shoe for your experients",
      imagePath: "lib/images/Jumpman_black.png",
    ),
    Shoe(
      name: "Air Jordan Grey",
      price: "250",
      description: "Walking Shoes for flexin",
      imagePath: "lib/images/airjordan_grey.png",
    ),
    Shoe(
      name: "Nike Free Run 5.0",
      price: "300",
      description: "Outdoor Running Shoe",
      imagePath: "lib/images/nike_orangeputih.png",
    ),
    Shoe(
      name: "Air Jordan Black",
      price: "300",
      description: "Basket Shoe",
      imagePath: "lib/images/nike_hitamputih.png",
    ),
  ];

  // list of items in user cart

  List<Shoe> userCart = [];
  // get list of shoe for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add item to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item for cart
  void removeUtemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
