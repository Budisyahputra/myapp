import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/makanan.dart';

class DaftarMakanan extends StatelessWidget {
  final Makanan makanan;
  const DaftarMakanan({super.key, required this.makanan});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWideScreen = screenWidth > 600;

    return Container(
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
          SizedBox(
            width: double.infinity,
            height: 25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Rp${makanan.harga}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow[800],
                    ),
                    Text(
                      makanan.rating,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
