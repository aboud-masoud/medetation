import 'package:flutter/material.dart';
import 'package:meditation/screens/details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffB3CEC9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(child: Image.asset("assets/vector_1.png")),
              const Text(
                'Take A Breath',
                style: TextStyle(
                  fontFamily: 'MetalsmithRegular',
                  fontSize: 20,
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "It is a long established fact that a reader will be distracted by the ",
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
              const Text(
                  "readable content of a page when looking at its layout.",
                  style: TextStyle(
                    fontSize: 10,
                  )),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  categories("Miditation", "assets/meditation.png"),
                  categories("Yoga", "assets/yoga.png"),
                  categories("Sound", "assets/sound.png"),
                ],
              ),
              const SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      mycard(context,
                          time: "10 min",
                          image: "assets/The Peace.png",
                          title: "The Peace",
                          description:
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit"),
                      const SizedBox(width: 8),
                      mycard(context,
                          time: "15 min",
                          image: "assets/Stress Relief.png",
                          title: "Stress Relief",
                          description:
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit"),
                      const SizedBox(width: 8),
                      mycard(context,
                          time: "20 min",
                          image: "assets/rapper.png",
                          title: "Rapper",
                          description:
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit"),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: const [
                  SizedBox(width: 28),
                  Text("Benefits",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  benfitsCard("assets/Increase Blood Fluid.png", "Increase",
                      "Blood  Fluid"),
                  benfitsCard("assets/Relax Mind.png", "Relax", "Mind"),
                  benfitsCard(
                      "assets/Straighten Your Mood.png", "Straighten", "mood"),
                ],
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }

  Widget benfitsCard(String image, String text1, String text2) {
    return SizedBox(
      child: Column(
        children: [
          Image.asset(image),
          asmetext1(text1),
          asmetext1(text2),
        ],
      ),
    );
  }

  Widget asmetext1(String lolo) {
    return SizedBox(
      height: 25,
      child: Text(
        lolo,
        maxLines: 2,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }

  Widget mycard(BuildContext context,
      {required String title,
      required String image,
      required String time,
      required String description}) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: ((context) {
              return DetailsScreen(
                title: title,
                image: image,
                description: description,
              );
            }),
          ),
        );
      },
      child: Container(
        decoration: const BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        height: 180,
        width: 150,
        child: Column(
          children: [
            const SizedBox(height: 17),
            Container(
                decoration: const BoxDecoration(
                    color: Color(0xff1A7F72),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                width: 65,
                height: 65,
                child: Image.asset(image)),
            const SizedBox(height: 8),
            Text(title,
                style:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Text(
                description,
                // "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                maxLines: 3,
                style: const TextStyle(fontSize: 10),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const SizedBox(width: 10),
                Text(time, style: const TextStyle(fontSize: 10)),
                Expanded(child: Container()),
                Image.asset("assets/button_forword.png"),
                const SizedBox(width: 10),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget categories(String name, String image) {
    return Column(
      children: [
        Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            height: 65,
            child: Image.asset(image)),
        const SizedBox(height: 8),
        Text(name, style: const TextStyle(fontSize: 14)),
      ],
    );
  }
}
