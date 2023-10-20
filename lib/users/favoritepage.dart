import 'package:flutter/material.dart';
import 'package:seblak2/constans.dart';

class FavoritePage extends StatefulWidget {
  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.bg1,
        title: Text(
          'Favorite',
          style: TextStyle(color: Palette.orange), // Menggunakan Palette.orange sebagai warna judul
        ),
      ),
      body: Center(
        child: const Text(
          'Favorite',
        ),
      ),
    );
  }
}

