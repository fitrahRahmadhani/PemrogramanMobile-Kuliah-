import 'package:flutter/material.dart';
import 'package:database_sqlite/models/item.dart';

class EntryForm extends StatefulWidget {
  final Item item;
  EntryForm(this.item);
  @override
  EntryFormState createState() => EntryFormState(this.item);
}

//class controller
class EntryFormState extends State<EntryForm> {
  Item item;
  EntryFormState(this.item);
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController kodeBarangController = TextEditingController();
  TextEditingController stockController = TextEditingController();
  @override
  Widget build(BuildContext context) {
//kondisi
    if (item != null) {
      nameController.text = item.name;
      priceController.text = item.price.toString();
    }
    return Scaffold(
        appBar: AppBar(
          title: item.price == 0 ? Text('Tambah') : Text('Ubah'),
          leading: Icon(Icons.keyboard_arrow_left),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
          child: ListView(
            children: <Widget>[
// nama
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: TextField(
                  controller: nameController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Nama Barang',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) {
//
                  },
                ),
              ),
// harga
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: TextField(
                  controller: priceController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Harga',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) {
//
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: TextField(
                  controller: kodeBarangController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Kode Barang',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) {
//
                  },
                ),
              ),
// harga
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: TextField(
                  controller: stockController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Stock',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) {
//
                  },
                ),
              ),
// tombol button
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Row(
                  children: <Widget>[
// tombol simpan
                    Expanded(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.green,
                          disabledForegroundColor:
                              Colors.grey.withOpacity(0.38),
                        ),
                        child: Text(
                          'Save',
                          textScaleFactor: 1.5,
                        ),
                        onPressed: () {
                          if (item == null) {
// tambah data
                            item = Item.origin(
                                name: nameController.text,
                                price: int.parse(priceController.text),
                                kodeBarang: kodeBarangController.text,
                                stock: int.parse(stockController.text));
                          } else {
// ubah data
                            item.name = nameController.text;
                            item.price = int.parse(priceController.text);
                            item.kodeBarang = kodeBarangController.text;
                            item.stock = int.parse(stockController.text);
                          }
// kembali ke layar sebelumnya dengan membawa objek item
                          Navigator.pop(context, item);
                        },
                      ),
                    ),
                    Container(
                      width: 5.0,
                    ),
// tombol batal
                    Expanded(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.red,
                          disabledForegroundColor:
                              Colors.grey.withOpacity(0.38),
                        ),
                        child: Text(
                          'Cancel',
                          textScaleFactor: 1.5,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
