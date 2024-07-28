import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/components/button.dart';
import 'package:myapp/models/makanan.dart';
import 'package:myapp/theme/colors.dart';

import '../components/daftar_makanan.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List menuMakanan = [
    Makanan(
      nama: "Mie Kukus",
      harga: "25.000",
      gambar: "images/mie.png",
      rating: "7.0",
    ),
    Makanan(
      nama: "Bakso",
      harga: "40.000",
      gambar: "images/bakso.png",
      rating: "8.2",
    ),
    Makanan(
      nama: "Nasi Goreng",
      harga: "20.000",
      gambar: "images/fried-rice.png",
      rating: "9.1",
    ),
    Makanan(
      nama: "Nasi Goreng",
      harga: "20.000",
      gambar: "images/fried-rice.png",
      rating: "9.1",
    ),
    Makanan(
      nama: "Nasi Goreng",
      harga: "20.000",
      gambar: "images/fried-rice.png",
      rating: "9.1",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWideScreen = screenWidth > 600;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 189, 181, 181),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
        title: const Text(
          'Restaurant Jambi',
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dapatkan Diskon 30%',
                          style: GoogleFonts.dmSerifDisplay(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 10),
                        MyButton(
                          text: "Redeem",
                          onTap: () {},
                        )
                      ],
                    ),
                    Image.asset(
                      'images/fried-rice.png',
                      height: 80,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Cari disini..."),
              ),
              const SizedBox(height: 20),
              Text(
                "List Menu",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              isWideScreen
                  ? GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 3 / 2,
                      ),
                      itemCount: menuMakanan.length,
                      itemBuilder: (context, index) => DaftarMakanan(
                        makanan: menuMakanan[index],
                      ),
                    )
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: menuMakanan.length,
                      itemBuilder: (context, index) => DaftarMakanan(
                        makanan: menuMakanan[index],
                      ),
                    ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'images/fried-rice.png',
                          height: 60,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nasi Goreng",
                              style: GoogleFonts.dmSerifDisplay(
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'Rp20.000',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.favorite_outline,
                      color: Colors.red,
                      size: 28,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
