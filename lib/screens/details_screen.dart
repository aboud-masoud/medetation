import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String title;
  final String image;
  final String description;

  const DetailsScreen({required this.title, super.key, required this.image, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 239, 247),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              children: [
                const SizedBox(height: 100),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50))),
                    height: 100,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(Icons.arrow_back)),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xff1A7F72), borderRadius: BorderRadius.all(Radius.circular(20))),
                  width: 100,
                  height: 100,
                  child: Image.asset(
                    image,
                    width: 120,
                    height: 120,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  title,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  description,
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
