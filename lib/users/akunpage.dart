import 'package:flutter/material.dart';
import 'package:seblak2/constans.dart';

class AkunPage extends StatefulWidget {
  @override
  State<AkunPage> createState() => _AkunPageState();
}

class _AkunPageState extends State<AkunPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.bg1,
        title: Text(
          'Profile',
          style: TextStyle(color: Palette.orange), // Menggunakan Palette.orange sebagai warna judul
        ),
      ),
      body: Center(
        child: UserProfile(),
      ),
    );
  }
}


class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Ganti dengan data pengguna sebenarnya
    String namaPengguna = "Putri Purnamasari";
    String email = "putribahana19@gmail.com";
    String noHP = "+62 856-6961-7801";
    String alamat = "Jl. Sunan Giri No.35";
    String fotoProfil = "assets/putri.jpg";

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          backgroundImage: AssetImage(fotoProfil),
          radius: 90.0,
        ),
        SizedBox(height: 20.0),
        Text(
          namaPengguna,
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        Text(
          email,
          style: TextStyle(fontSize: 16.0),
        ),
        Text(
          noHP,
          style: TextStyle(fontSize: 16.0),
        ),
        Text(
          alamat,
          style: TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }
}
