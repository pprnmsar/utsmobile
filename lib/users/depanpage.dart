import 'package:flutter/material.dart';

class DepanPage extends StatefulWidget {
  @override
  State<DepanPage> createState() => _DepanPageState();
}

class _DepanPageState extends State<DepanPage> {
  // Dummy data untuk daftar seblak
  List<SeblakItem> seblakItems = [
    SeblakItem(
      image: 'assets/food_4.jpeg',
      name: 'Seblak Seafood',
      price: 25000,
      description: 'Seblak seafood adalah terbuat dari campuran kerupuk, bakso ikan, cumi-cumi, udang, dan bahan-bahan lain.',
    ),
    SeblakItem(
      image: 'assets/food_3.jpeg',
      name: 'Seblak Lengkap',
      price: 20000,
      description: 'Seblak lengkap adalah menggabungkan kerupuk, bakso, telur, sayuran, dan daging ayam atau sapi dalam satu mangkuk.',
    ),
    SeblakItem(
      image: 'assets/cemilan.jpg',
      name: 'Pentol Cilok',
      price: 10000,
      description: 'cemilan yang terdiri dari pentol kecil yang terbuat dari tepung tapioka atau aci, seringkali ditusuk dengan tusukan, dan disajikan dengan saus kacang pedas.',
    ),
    
    // Tambahkan item seblak lainnya di sini
  ];
  List<SeblakItem> basoItems = [
    SeblakItem(
      image: 'assets/food_5.jpeg',
      name: 'Baso Aci Lengkap',
      price: 20000,
      description: 'bBaso Aci Lengkap : baso aci kecil yang dimakan dengan pelengkap seperti tahu, siomay, ceker ayam, dan saus kaldu gurih.',
    ),
    SeblakItem(
      image: 'assets/food_6.jpeg',
      name: 'Baso Aci Seafood',
      price: 15000,
      description: 'Baso Aci Seafood : baso aci dengan tambahan seafood seperti cumi-cumi dan udang, disajikan dengan kuah seafood gurih.',
    ),
    SeblakItem(
      image: 'assets/minuman.jpg',
      name: 'Minuman Segar',
      price: 8000,
      description: 'terdapat berbagai macam varian minuman segar.',
    ),
    
    // Tambahkan item seblak lainnya di sini
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seblak Raos'),
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: seblakItems.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SeblakDetailPage(seblak: seblakItems[index]),
                    ),
                  );
                },
                child: SeblakCard(seblak: seblakItems[index]),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SeblakDetailPage(seblak: basoItems[index]),
                    ),
                  );
                },
                child: SeblakCard(seblak: basoItems[index]),
              ),
            ],
          );
        },
      ),
    );
  }
}

class SeblakItem {
  final String image;
  final String name;
  final int price;
  final String description;

  SeblakItem({
    required this.image,    
    required this.name,
    required this.price,
    required this.description,
  });
}

class SeblakCard extends StatelessWidget {
  final SeblakItem seblak;

  SeblakCard({required this.seblak});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
       
          child: Card(
        
           
          
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: <Widget>[
                Image.asset(
                  seblak.image,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    seblak.name,
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Harga: ${seblak.price.toStringAsFixed(2)}'),
                ),
              ],
            ),
          ),
        ),

    //     Container(
    //   // padding: EdgeInsets.all(10),
    //   child: Card(
    
    //     // margin: EdgeInsets.only(bottom: 320),
      
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: <Widget>[
    //         Image.asset(
    //           seblak.image,
    //           width: 150,
    //           height: 150,
    //           fit: BoxFit.cover,
    //         ),
    //         Padding(
    //           padding: EdgeInsets.all(8.0),
    //           child: Text(
    //             seblak.name,
    //             style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
    //           ),
    //         ),
    //         Padding(
    //           padding: EdgeInsets.all(8.0),
    //           child: Text('Harga: ${seblak.price.toStringAsFixed(2)}'),
    //         ),
    //       ],
    //     ),
    //   ),
    // ),
      ],
    );
  }
}

class SeblakDetailPage extends StatefulWidget {
  final SeblakItem seblak;

  SeblakDetailPage({required this.seblak});

  @override
  _SeblakDetailPageState createState() => _SeblakDetailPageState();
}

class _SeblakDetailPageState extends State<SeblakDetailPage> {
  int jumlahPesanan = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.seblak.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              widget.seblak.image,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  
                  Text(
                    'Deskripsi:',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Text(widget.seblak.description),
                  
                  SizedBox(height: 8.0),
                  Text(
                    'Harga: ${widget.seblak.price.toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Jumlah Pesanan:',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: () {
                              setState(() {
                                if (jumlahPesanan > 1) {
                                  jumlahPesanan--;
                                }
                              });
                            },
                          ),
                          Text(
                            jumlahPesanan.toString(),
                            style: TextStyle(fontSize: 16.0),
                          ),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              setState(() {
                                jumlahPesanan++;
                              });
                            },
                          ),
                          
                        ],
                      ),
                      ElevatedButton(
                    onPressed: () {
                      // Tambahkan logika untuk menambah pesanan ke keranjang di sini
                    },
                    child: Text('Tambahkan ke Keranjang'),
                  ),
                    ],
                  ),
                  // SizedBox(height: 8.0),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}