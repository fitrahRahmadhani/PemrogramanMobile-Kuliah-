import 'package:flutter/material.dart';
import 'package:praktikum_navigasi_route/models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Gulaku Premium 1000G',
        price: 15000,
        path: 'assets/images/gulaku.png',
        desc:
            'Gulaku premium adalah gula pasir putih produksi nasional yang berkualitas lebih putih dan lebih jernih, serta diproduksi dari tebu alami.'),
    Item(
        name: 'Garam Meja Refina 500G',
        price: 5000,
        path: 'assets/images/refina.png',
        desc:
            'Garam konsumsi hasil teknologi pemurnian dengan standard international diproses secara kristalisasi dengan menggunakan mesin modern berteknologi tinggi'),
    Item(
        name: 'Minyak Bimoli 2L',
        price: 33000,
        path: 'assets/images/bimoli.png',
        desc:
            'Minyak goreng Bimoli dibuat dari bibit biji kelapa sawit pilihan yaitu "Tenera" untuk menghasilkan minyak goreng dengan kualitas terbaik.'),
    Item(
        name: 'Ladaku Merica Bubuk',
        price: 10500,
        path: 'assets/images/ladaku.png',
        desc:
            ' Ladaku merica bubuk kemasan 4gr per sachet dengan isi 6 renteng ( 1 renteng isi 12 sachet).'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        title: Text('Shoping List'),
        backgroundColor: Colors.orange[900],
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/item', arguments: item);
                },
                child: Card(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: SizedBox.fromSize(
                                    size: Size.fromRadius(48),
                                    child: Image(image: AssetImage(item.path)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.name,
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                                ),
                              Text(
                                'Rp'+item.price.toString(),
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.orange[900])
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
