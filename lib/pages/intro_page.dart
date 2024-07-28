import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWideScreen = screenWidth > 600;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 134, 62, 56),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                if (isWideScreen)
                  Text(
                    "Restaurant Jambi",
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 28,
                      color: Colors.white,
                    ),
                  ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Image.asset('images/fried-rice.png'),
                ),
                const SizedBox(height: 20),
                Text(
                  "Rasa Dari Masakan Jambi",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: isWideScreen ? 24 : 20,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Coba Rasakan Nikmatnya Makanan Khas Jambi",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: isWideScreen ? 18 : 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 30),
                MyButton(
                  text: 'Mulai',
                  onTap: () {
                    // Ke menu utama
                    Navigator.pushNamed(context, '/menupage');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
