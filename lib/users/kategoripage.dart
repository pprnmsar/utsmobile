import 'package:flutter/material.dart';

class KategoriPage extends StatefulWidget {
  @override
  State<KategoriPage> createState() => _KategoriPageState();
}

class _KategoriPageState extends State<KategoriPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kategori'),
      ),
      body: GridView.count(
        crossAxisCount: 2, // Jumlah kolom dalam grid
        children: <Widget>[
          _buildCategoryCard(
              'Seblak', 'Seblak Pedas', 5.99, 'assets/food_4.jpeg', SubMenuPage("Seblak Menu")),
          _buildCategoryCard(
              'Baso Aci', 'Baso Aci Spesial', 6.99, 'assets/food_2.jpeg', SubMenuPage("Baso Aci Menu")),
          _buildCategoryCard(
              'Cemilan', 'Keripik Kentang', 3.99, 'assets/cemilan.jpg', SubMenuPage("Cemilan Menu")),
          _buildCategoryCard(
              'Minuman', 'Es Teh Manis', 2.49, 'assets/minuman.jpg', SubMenuPage("Minuman Menu")),
        ],
      ),
    );
  }

  Widget _buildCategoryCard(String categoryName, String description, double price, String imagePath, Widget nextPage) {
    return Card(
      margin: EdgeInsets.all(10.0),
      elevation: 5.0,
      child: InkWell(
        onTap: () {
          // Navigasi ke halaman submenu saat kategori dipilih
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => nextPage));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(
              imagePath,
              height: 120.0,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Text(
                    categoryName,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SubMenuPage extends StatelessWidget {
  final String menuName;

  SubMenuPage(this.menuName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(menuName),
      ),
      body: GridView.count(
        crossAxisCount: 2, // Jumlah kolom dalam grid
        children: <Widget>[
          _buildMenuItem('Seblak Makaroni', 'Isian Makaroni', 12000, 'assets/seblakm.jpeg'),
          _buildMenuItem('Seblak Tulang', 'Isian Tulang', 20000, 'assets/seblakt.jpeg'),
          _buildMenuItem('Seblak Bakso', 'Isian Bakso', 10000, 'assets/seblakb.jpeg'),
          _buildMenuItem('Seblak Ceker', 'Isian Ceker', 15000, 'assets/food_1.jpeg'),
        ],
      ),
    );
  }

  Widget _buildMenuItem(String itemName, String description, double price, String imagePath) {
    return Card(
      margin: EdgeInsets.all(10.0),
      elevation: 5.0,
      child: InkWell(
        onTap: () {
          // Tindakan yang ingin Anda lakukan ketika item submenu dipilih
        },
        child: Column(
          children: <Widget>[
            Image.asset(
              imagePath,
              height: 90.0,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Text(
                    itemName,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                  Text(
                    '${price.toStringAsFixed(0)}',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

