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
  final List<Makanan> menuMakanan = [
    Makanan(
        nama: "Mie Kukus",
        harga: "25.000",
        gambar: "images/mie.png",
        rating: "7.0",
        deskripsi:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam non egestas ligula, eu cursus libero. Integer quis dictum enim. Vivamus blandit commodo libero. Vivamus laoreet feugiat lorem et suscipit. Pellentesque."),
    Makanan(
        nama: "Bakso",
        harga: "40.000",
        gambar: "images/bakso.png",
        rating: "8.2",
        deskripsi:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam non egestas ligula, eu cursus libero. Integer quis dictum enim. Vivamus blandit commodo libero. Vivamus laoreet feugiat lorem et suscipit. Pellentesque."),
    Makanan(
        nama: "Nasi Goreng",
        harga: "20.000",
        gambar: "images/fried-rice.png",
        rating: "9.1",
        deskripsi:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam non egestas ligula, eu cursus libero. Integer quis dictum enim. Vivamus blandit commodo libero. Vivamus laoreet feugiat lorem et suscipit. Pellentesque."),
    Makanan(
        nama: "Nasi Kuning",
        harga: "22.000",
        gambar: "images/biryani.png",
        rating: "8.0",
        deskripsi:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam non egestas ligula, eu cursus libero. Integer quis dictum enim. Vivamus blandit commodo libero. Vivamus laoreet feugiat lorem et suscipit. Pellentesque."),
    Makanan(
        nama: "Nasi Gemuk",
        harga: "15.000",
        gambar: "images/iftar.png",
        rating: "7.5",
        deskripsi:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam non egestas ligula, eu cursus libero. Integer quis dictum enim. Vivamus blandit commodo libero. Vivamus laoreet feugiat lorem et suscipit. Pellentesque."),
    Makanan(
        nama: "Salad",
        harga: "10.000",
        gambar: "images/salad.png",
        rating: "7.9",
        deskripsi:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam non egestas ligula, eu cursus libero. Integer quis dictum enim. Vivamus blandit commodo libero. Vivamus laoreet feugiat lorem et suscipit. Pellentesque."),
    Makanan(
        nama: "Kebab",
        harga: "20.000",
        gambar: "images/taco.png",
        rating: "7.6",
        deskripsi:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam non egestas ligula, eu cursus libero. Integer quis dictum enim. Vivamus blandit commodo libero. Vivamus laoreet feugiat lorem et suscipit. Pellentesque."),
    Makanan(
        nama: "Lobster Goreng",
        harga: "50.000",
        gambar: "images/lobster.png",
        rating: "9.5",
        deskripsi:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam non egestas ligula, eu cursus libero. Integer quis dictum enim. Vivamus blandit commodo libero. Vivamus laoreet feugiat lorem et suscipit. Pellentesque."),
  ];

  List<bool> favorites = [];

  @override
  void initState() {
    super.initState();
    favorites = List<bool>.filled(menuMakanan.length, false);
  }

  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 208, 172, 172),
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
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isWideScreen = constraints.maxWidth > 600;

          final filteredMenu = menuMakanan
              .where((makanan) => makanan.nama
                  .toLowerCase()
                  .contains(searchQuery.toLowerCase()))
              .toList();

          return SingleChildScrollView(
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
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dapatkan Diskon 15%',
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
                        ),
                        if (constraints.maxWidth > 350)
                          Image.asset(
                            'images/fried-rice.png',
                            height: 80,
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        searchQuery = value;
                      });
                    },
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
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: constraints.maxWidth > 700 ? 3 : 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: (constraints.maxWidth / 2 - 20) /
                                ((constraints.maxWidth / 2 - 20) * 1.5),
                          ),
                          itemCount: filteredMenu.length,
                          itemBuilder: (context, index) {
                            return DaftarMakanan(
                              makanan: filteredMenu[index],
                              isFavorite: favorites[
                                  menuMakanan.indexOf(filteredMenu[index])],
                              onFavoriteToggle: () {
                                setState(() {
                                  favorites[menuMakanan
                                          .indexOf(filteredMenu[index])] =
                                      !favorites[menuMakanan
                                          .indexOf(filteredMenu[index])];
                                });
                              },
                            );
                          },
                        )
                      : ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: filteredMenu.length,
                          itemBuilder: (context, index) {
                            return DaftarMakanan(
                              makanan: filteredMenu[index],
                              isFavorite: favorites[
                                  menuMakanan.indexOf(filteredMenu[index])],
                              onFavoriteToggle: () {
                                setState(() {
                                  favorites[menuMakanan
                                          .indexOf(filteredMenu[index])] =
                                      !favorites[menuMakanan
                                          .indexOf(filteredMenu[index])];
                                });
                              },
                            );
                          },
                        ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
