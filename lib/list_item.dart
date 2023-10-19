// untuk mempermudah pembacaaan kode (listItem)
// turunan dari stateless widget

import 'package:flutter/material.dart';
import 'package:list_kuliner/makanan.dart';

class ListItem extends StatelessWidget {
  final Makanan makanan;

  const ListItem({super.key, required this.makanan});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // widget untuk menampilkan gambar lokal
          Image.asset(
            makanan.gambar,
            height: 75,
            width: 75,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                makanan.nama,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                makanan.deskripsi,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
