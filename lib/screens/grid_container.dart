import 'package:flutter/material.dart';
import 'package:meditation/screens/session_screen.dart';

class GridContainer extends StatefulWidget {
  final String categorySelectedName;
  const GridContainer({required this.categorySelectedName, super.key});

  @override
  State<GridContainer> createState() => _GridContainerState();
}

class _GridContainerState extends State<GridContainer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200, childAspectRatio: 3 / 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
            itemCount: myList.where((element) => element.categoryName == widget.categorySelectedName).length,
            itemBuilder: (BuildContext ctx, index) {
              return InkWell(
                onTap: () {
                  print("lolo");
                  myList[index].qty = myList[index].qty + 1;
                  setState(() {});
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Text(myList[index].name),
                      Image.network(
                        myList[index].imageUrl,
                        height: 50,
                      ),
                      Text("Price ${myList[index].price} JD"),
                      Expanded(child: Container()),
                      myList[index].qty == 0 ? Text("Add To Cart") : Text("You Have ${myList[index].qty} in your cart"),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
