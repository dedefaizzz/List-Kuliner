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
      decoration: decoration(),
      height: 100,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
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

  BoxDecoration decoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(10)),
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(51, 255, 153, 1),
          offset: Offset(1.0, 2.0),
          blurRadius: 6.0,
        ),
      ],
    );
  }
}
