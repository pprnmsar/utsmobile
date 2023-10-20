import 'package:flutter/material.dart';
import 'package:seblak2/constans.dart';

class KeranjangPage extends StatefulWidget {
  @override
  State<KeranjangPage> createState() => _KeranjangPageState();
}

class _KeranjangPageState extends State<KeranjangPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.bg1,
        title: Text(
          'Keranjang',
          style: TextStyle(color: Palette.orange), // Menggunakan Palette.orange sebagai warna judul
        ),
      ),
      body: Center(
        child: const Text(
          'Keranjang',
        ),
      ),
    );
  }
}
