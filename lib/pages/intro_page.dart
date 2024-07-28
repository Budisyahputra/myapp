import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 134, 62, 56),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 5,
            ),
            // Judul
            // Text(
            //   "Restaurant Jambi",
            //   style:
            //       GoogleFonts.dmSerifDisplay(fontSize: 28, color: Colors.white),
            // ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('images/fried-rice.png'),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Rasa Dari Masakan Jambi",
              style:
                  GoogleFonts.dmSerifDisplay(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Coba Rasakan Nikmatnya Makanan Khas Jambi",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            // Button
            MyButton(
              text: 'Mulai',
              onTap: () {
                // Ke menu utama
                Navigator.pushNamed(context, '/menupage');
              },
            )
          ],
        ),
      ),
    );
  }
}
