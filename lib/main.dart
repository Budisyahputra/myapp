import 'package:flutter/material.dart';
import 'package:myapp/pages/intro_page.dart';
import 'package:myapp/pages/menu_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const IntroPage(),
      routes: {
        '/intropage': (context) => const IntroPage(),
        '/menupage': (context) => const MenuPage(),
      },
    );
  }
}

// Terima kasih atas icon-nya. Credit:
// https://www.flaticon.com/free-icons/bakso created by Asep Saripudin
// https://www.flaticon.com/free-icons/mie created by Royyan Wijaya
// https://www.flaticon.com/free-icons/lunch created by Freepik
// https://www.flaticon.com/free-icons/indian created by Freepik
// https://www.flaticon.com/free-icons/iftar" created by Freepik
// https://www.flaticon.com/free-icons/biryani" Freepik
// https://www.flaticon.com/free-icons/taco" created by Freepik
// https://www.flaticon.com/free-icons/salad" created by Freepik
// https://www.flaticon.com/free-icons/lobster" created by Freepik