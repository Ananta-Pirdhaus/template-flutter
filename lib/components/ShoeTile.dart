import 'package:flutter/material.dart';
import 'package:flutter_rizal/models/shoe.dart';

// ignore: must_be_immutable
class ShoeTile extends StatelessWidget {
  ShoeTile({
    super.key,
    required this.shoe,
    required this.onTap,
  });

  void Function()? onTap;
  Shoe shoe;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25.0),
      width: 250,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // ShiePict
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(shoe.imagePath),
          ),

          // Description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              shoe.description,
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),

          // price + details
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Shoe Nmae
                    Text(
                      shoe.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),

                    const SizedBox(height: 5),
                    // price
                    Text(
                      '\$' + shoe.price,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),

                // plus
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),

          // button add to cart
        ],
      ),
    );
  }
}
