import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/shoe_tile.dart';
import '../models/cart.dart';
import '../models/shoe.dart';
class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  // add show to cart
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    // alert the user, shoe successfully added
    showDialog(context: context, builder: (context) => const AlertDialog(
      title: Text("successfully added"),
      content: Text("Check your cart"),
    ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return  Consumer<Cart>(builder: (context, value, child) => Column(
      children: [
        // search bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
              color: Colors.blueGrey.shade200,
              borderRadius: BorderRadius.circular(8)
          ),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Search",
                style: TextStyle(
                    color: Colors.blueGrey.shade900),
              ),
              Icon(
                Icons.search,
                color: Colors.blueGrey.shade900,
              ),
            ],
          ),
        ),

        //message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            "Everyone flies... some fly longer than others",
            style: TextStyle(
                color: Colors.blueGrey.shade100
            ),
          ),
        ),

        //hot sneakers
         Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Hot Picks🚀",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.blueGrey.shade900
                ),

              ),
              const Text(
                "See all",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.blue
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 10,),

        // list of show for sale
        Expanded(
          child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            //get a shoe from shop list
            Shoe shoe = value.getShoeList()[index];
            // return the shoe
            return ShoeTile(
              shoe: shoe,
              onTap: () => addShoeToCart(shoe),
            );
          },
        ),
        ),
        const Padding(
          padding:  EdgeInsets.only(top: 25.0, left: 25,right: 25,),
          child: Divider(
            color: Colors.blueGrey,
          ),
        ),
      ],
    ),);
  }
}
