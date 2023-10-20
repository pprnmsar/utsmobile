import 'package:flutter/material.dart';
import 'package:seblak2/constans.dart';

class TransaksiPage extends StatefulWidget {
  @override
  State<TransaksiPage> createState() => _TransaksiPageState();
}

class _TransaksiPageState extends State<TransaksiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.bg1,
        title: Text(
          'Transaksi',
          style: TextStyle(color: Palette.orange), // Menggunakan Palette.orange sebagai warna judul
        ),
      ),
      body: Center(
        child: const Text(
          'Transaksi',
        ),
      ),
    );
  }
}

