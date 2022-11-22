import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffB3CEC9),
      body: SafeArea(
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
            // Text("Take A Breath",
            //     style: GoogleFonts.rubik  (
            //       textStyle: const TextStyle(fontSize: 22, color: Color(0xff1A7F72), fontWeight: FontWeight.bold),
            //     ))
          ],
        ),
      ),
    );
  }
}
