import 'package:flutter/cupertino.dart';
import 'package:sneakerwave/models/shoe.dart';

class Cart  extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Crystal',
        price: '436',
        description: 'Iconic design meets everyday comfort. Perfect for an effortless sporty look.',
        imagePath: 'lib/images/image1.png',
    ),
    Shoe(
        name: 'chiller',
        price: '324',
        description: 'Experience top-tier performance with plush cushioning, ideal for long-distance runners.',
        imagePath: 'lib/images/image2.png',
    ),
    Shoe(
        name: 'Fuskz',
        price: '236',
        description: 'Rugged and lightweight, built for the adventurous spirit. Conquer trails with ease and stability.',
        imagePath: 'lib/images/image3.png',
    ),
    Shoe(
        name: 'Hulk',
        price: '515',
        description: 'Combines a classic silhouette with supportive comfort. A timeless staple for daily wear and athletic activities.',
        imagePath: 'lib/images/image4.png'
    ),
  ];

  // list of item in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
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

  // remove item from the cart
  void removeItemFromCart(Shoe shoe) {
    userCart.removeWhere((item) => item == shoe);
    notifyListeners();
  }
}