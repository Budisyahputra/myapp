import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/pages/detail_page.dart'; // Import halaman detail

import '../models/makanan.dart';

class DaftarMakanan extends StatelessWidget {
  final Makanan makanan;
  final bool isFavorite;
  final VoidCallback onFavoriteToggle;

  const DaftarMakanan({
    super.key,
    required this.makanan,
    required this.isFavorite,
    required this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWideScreen = screenWidth > 600;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(makanan: makanan),
          ),
        );
      },
      child: Container(
        width: isWideScreen ? (screenWidth / 2) - 40 : screenWidth - 50,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              makanan.gambar,
              height: 100,
            ),
            Text(
              makanan.nama,
              style: GoogleFonts.dmSerifDisplay(fontSize: 20),
            ),
            const SizedBox(height: 10),
            Text(
              'Rp${makanan.harga}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[800],
                ),
                const SizedBox(width: 5),
                Text(
                  makanan.rating,
                  style: const TextStyle(color: Colors.grey, fontSize: 16),
                ),
                const SizedBox(height: 5),
                IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_outline,
                    color: Colors.red,
                  ),
                  onPressed: onFavoriteToggle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
