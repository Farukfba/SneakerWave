import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakerwave/models/shoe.dart';

import '../models/cart.dart';

class CartItem extends StatefulWidget {
   CartItem({
     super.key,
     required this.shoe
   });
  Shoe shoe;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  // remove item from cart
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade800,
        borderRadius: BorderRadius.circular(8)
      ),
      margin: const EdgeInsets.only(bottom: 18),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(
          widget.shoe.name,
            style: const TextStyle(
                color: Colors.white
            ),
        ),
        subtitle: Text(
          widget.shoe.price,
          style: const TextStyle(
            color: Colors.white
          ),),
        trailing: IconButton(
          icon: const Icon(Icons.delete, color: Colors.white,),
          onPressed: removeItemFromCart
        ),
      ),
    );
  }
}
