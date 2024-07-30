import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/makanan.dart';

class DetailPage extends StatelessWidget {
  final Makanan makanan;

  const DetailPage({super.key, required this.makanan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(makanan.nama),
        backgroundColor: const Color.fromARGB(255, 134, 62, 56),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              makanan.gambar,
              height: 200,
            ),
            const SizedBox(height: 20),
            Text(
              makanan.nama,
              style: GoogleFonts.dmSerifDisplay(fontSize: 28),
            ),
            const SizedBox(height: 10),
            Text(
              'Rp${makanan.harga}',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.grey[700],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
            const SizedBox(height: 20),
            Text(
              makanan.deskripsi,
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
