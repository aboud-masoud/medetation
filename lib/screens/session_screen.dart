import 'package:flutter/material.dart';
import 'package:meditation/model/item.dart';
import 'package:meditation/screens/grid_container.dart';

List<Item> myList = [
  Item(name: "Product 1", price: 1.6, imageUrl: "https://m.media-amazon.com/images/I/81j68d7Jh3L.jpg"),
  Item(
      name: "Product 2",
      price: 4.1,
      imageUrl:
          "https://www.seriouseats.com/thmb/4sh6ER4IA-4P8_PGLYiU2I6qxT4=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/20220203-potato-chips-vicky-wasik-14-2d032f65cc7848a3bd760bdf314450c0.JPG"),
  Item(
      name: "Product 3",
      price: 3.6,
      imageUrl:
          "https://images.food52.com/-8w0rd0fybUF8lCm_-wnrr255fA=/2016x1344/ec8ee48e-c77a-48c3-a9e0-d2191111bc9a--2021-0723_food52-12th-birthday_homemade-potato-chips_3x2_ty-mecham.jpg"),
  Item(
      name: "Product 4",
      price: 6.1,
      imageUrl: "https://m.media-amazon.com/images/I/81j68d7Jh3L.jpg",
      categoryName: "Black Friday Offer")
];

class SessionScreen extends StatefulWidget {
  SessionScreen({super.key});

  @override
  State<SessionScreen> createState() => _SessionScreenState();
}

class _SessionScreenState extends State<SessionScreen> {
  List<String> categories = ["All Offer", "Black Friday Offer", "10 % Sale", "Check our latest offer"];

  String selectedCategoryName = "All Offer";

  @override
  Widget build(BuildContext context) {
    // List<String> itemName = ["item 1", "item 2", "item 3", "item 4", "item 5", "item 6", "item 7", "item 8", "item 9"];
    // List<double> itemPrice = [1.3, 23, 12, 123, 4.8, 22, 2.7, 2.1];

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              width: 15,
            ),
            Image.asset(
              "assets/sessions.png",
              width: 267,
            ),
            const Text(
              "Find Items",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: (() {
                            selectedCategoryName = categories[index];
                            setState(() {});
                          }),
                          child: Text(categories[index])),
                    );
                  })),
            ),
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: [
            //       ElevatedButton(onPressed: (() {}), child: Text("Black Friday Offer")),
            //       SizedBox(width: 5),
            //       ElevatedButton(onPressed: (() {}), child: Text("10 % Sale")),
            //       SizedBox(width: 5),
            //       ElevatedButton(onPressed: (() {}), child: Text("5 % Sale")),
            //       SizedBox(width: 5),
            //       ElevatedButton(onPressed: (() {}), child: Text("All Offer")),
            //       SizedBox(width: 5),
            //       ElevatedButton(onPressed: (() {}), child: Text("Check our latest offer")),
            //     ],
            //   ),
            // ),
            GridContainer(
              categorySelectedName: selectedCategoryName,
            ),
          ],
        ),
      ),
    );
  }
}
