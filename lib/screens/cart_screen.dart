import 'package:flutter/material.dart';
import 'package:meditation/screens/session_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print(" myList.where((element) => element.qty > 0).length");
    print(myList.where((element) => element.qty > 0).length);
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView.builder(
              itemCount: myList.length,
              itemBuilder: ((context, index) {
                if (myList[index].qty == 0) {
                  return const SizedBox();
                } else {
                  return Row(
                    children: [
                      Text(myList[index].name),
                      Expanded(child: Container()),
                      Text(myList[index].qty.toString()),
                    ],
                  );
                }
              })),
        ),
      ),
    );
  }
}
