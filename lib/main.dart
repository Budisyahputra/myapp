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

// Terima kasih atas icon-nya
// Credit
// <a href="https://www.flaticon.com/free-icons/bakso" title="bakso icons">Bakso icons created by Asep Saripudin - Flaticon</a>
// <a href="https://www.flaticon.com/free-icons/mie" title="mie icons">Mie icons created by Royyan Wijaya - Flaticon</a>
// <a href="https://www.flaticon.com/free-icons/lunch" title="lunch icons">Lunch icons created by Freepik - Flaticon</a>