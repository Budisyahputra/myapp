class Makanan {
  String nama;
  String harga;
  String gambar;
  String rating;
  String deskripsi;

  Makanan({
    required this.nama,
    required this.harga,
    required this.gambar,
    required this.rating,
    required this.deskripsi,
  });

  String get _nama => nama;
  String get _harga => harga;
  String get _gambar => gambar;
  String get _rating => rating;
  String get _deskripsi => deskripsi;
}
