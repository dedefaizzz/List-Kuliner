// untuk mempermudah pembacaaan kode (listItem)
// turunan dari stateless widget

import 'package:flutter/material.dart';
import 'package:list_kuliner/makanan.dart';
import 'package:list_kuliner/styles.dart';

class ListItem extends StatelessWidget {
  final Makanan makanan;

  const ListItem({super.key, required this.makanan});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: dekorasi(),
      height: 100,
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          gambar(),
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
              deskripsiTeks(),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          icon(),
        ],
      ),
    );
  }

  Row icon() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Icon(
          Icons.food_bank_rounded,
          color: iconColor,
          size: 30,
        ),
      ],
    );
  }

  ClipRRect gambar() {
    return ClipRRect(
      // widget untuk menampilkan gambar lokal
      borderRadius: BorderRadius.all(Radius.circular(10)),
      child: Image.asset(
        makanan.gambar,
        height: 75,
        width: 75,
        fit: BoxFit.cover,
      ),
    );
  }

  Column deskripsiTeks() {
    return Column(
      children: [
        Text(
          makanan.deskripsi,
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          makanan.harga,
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  BoxDecoration dekorasi() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(10)),
      boxShadow: [
        BoxShadow(
          color: iconColor,
          offset: Offset(1.0, 1.0),
          blurRadius: 4.0,
        ),
      ],
    );
  }
}
