import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        leadingWidth: 0,
        elevation: 0.7,
        title: const Text(
          "Pesanan",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Image.asset(
              'assets/images/order1.png',
              width: 343,
              height: 184,
            ),
          ),
          Container(
            height: 8,
            color: const Color(0xffE0E0E0),
            width: double.infinity,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Image.asset(
              'assets/images/order2.png',
              width: 343,
              height: 184,
            ),
          ),
        ],
      ),
    );
  }
}
