// membuat data dan menampilkan dlm aplikasi

class Makanan {
  // final : objek telah dibuat, value tdk bisa diubah
  final String nama; // properti
  final String deskripsi;
  final String gambar;
  final String detail;
  final String waktuBuka;
  final String harga;
  final String kalori;
  final List<String> gambarLain;
  final List<Map<String, String>> bahan;

// constructor named parameter {}
  Makanan({
    required this.nama,
    required this.deskripsi,
    required this.gambar,
    required this.detail,
    required this.waktuBuka,
    required this.harga,
    required this.kalori,
    required this.gambarLain,
    required this.bahan,
  });
}
