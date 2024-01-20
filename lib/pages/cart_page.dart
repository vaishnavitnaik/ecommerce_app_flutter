import 'package:ecommerce_app/components/cart_item.dart';
import 'package:ecommerce_app/modules/cart.dart';
import 'package:ecommerce_app/modules/shoe.dart';
import 'package:ecommerce_app/pages/CheckOutPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My Cart',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(
                        itemCount: value.getUserCart().length,
                        itemBuilder: (context, index) {
                          Shoe individual = value.getUserCart()[index];

                          return CartItem(shoe: individual);
                        }),
                  ),
                  Center(
                      child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0))),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.black87),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CheckOutPage()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "CheckOut",
                              style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          )))
                ],
              ),
            ));
  }
}
