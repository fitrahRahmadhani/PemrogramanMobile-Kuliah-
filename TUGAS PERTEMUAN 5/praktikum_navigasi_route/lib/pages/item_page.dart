import 'package:flutter/material.dart';
import 'package:praktikum_navigasi_route/models/item.dart';

class ItemPage extends StatelessWidget {
  // final Item itemArgs = ModalRoute.of(context).settings.arguments;

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        centerTitle: true,
        title: Text('Shoping List'),
        backgroundColor: Colors.orange[900],
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image(image: AssetImage(item.path)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  item.name,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  'Rp'+item.price.toString(),
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange[900],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  'Deskripsi',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  item.desc,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    height: 1.5
                    
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
