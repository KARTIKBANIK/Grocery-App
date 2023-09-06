import 'package:flutter/material.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(
              child: Container(
                child: TextField(
                  autofocus: false,
                  onSubmitted: (val) {},
                  onChanged: (val) {},
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 14.0, vertical: 16.0),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Search...",
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10.0),
            Container(
              height: 45,
              width: 45,
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    blurRadius: 8.0,
                  ),
                ],
              ),
              child: const Icon(
                Icons.filter_alt_outlined,
                color: Colors.grey,
              ),
            ),
            const SizedBox(width: 10.0),
            Badge(
              label: const Text("1"),
              backgroundColor: Theme.of(context).primaryColor,
              child: Container(
                height: 45,
                width: 45,
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      blurRadius: 8.0,
                    ),
                  ],
                ),
                child: Icon(
                  Icons.shopping_cart_checkout_outlined,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(width: 5.0),
          ],
        ),
      ),
    );
  }
}
