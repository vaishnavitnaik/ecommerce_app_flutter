import 'package:ecommerce_app/components/mydrawer.dart';
import 'package:flutter/material.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({super.key});

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Checkout'),
        backgroundColor: Colors.transparent,
      ),
      drawer: MyDrawer(),
    );
  }
}
