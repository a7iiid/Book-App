import 'package:flutter/material.dart';

class CustomAppBarBookDetails extends StatelessWidget {
  const CustomAppBarBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
          const Spacer(),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_cart_checkout))
        ],
      ),
    );
  }
}
