class Makanan {
  String nama;
  String harga;
  String gambar;
  String rating;

  Makanan({
    required this.nama,
    required this.harga,
    required this.gambar,
    required this.rating,
  });

  String get _nama => nama;
  String get _harga => harga;
  String get _gambar => gambar;
  String get _rating => rating;
}
