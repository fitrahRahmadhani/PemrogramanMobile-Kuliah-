import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'package:database_sqlite/controller/dbhelper.dart';
import 'package:database_sqlite/view/entry_form.dart';
import 'package:database_sqlite/models/item.dart';

//pendukung program asinkron
class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  DbHelper dbHelper = DbHelper();
  int count = 0;
  List<Item> itemList = [];

  @override
  Widget build(BuildContext context) {

    itemList ??= <Item>[];
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Item'),
      ),
      body: Column(children: [
        Expanded(
          child: createListView(),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.grey[500],
                  disabledForegroundColor: Colors.grey.withOpacity(0.38),
                ),
                child: Text(
                  "Tambah Item",
                  style: TextStyle(fontSize: 24),
                ),
                onPressed: () async {
                  var item = await navigateToEntryForm(
                      context, Item.origin(name: "", price: 0, kodeBarang: "", stock: 0,));
                  if (item.price != 0) {
                    int result = await dbHelper.insert(item);
                    if (result > 0) {
                      updateListView();
                    }
                  }
                },
              ),
            ),
          ),
        ),
      ]),
    );
  }
  

  Future<Item> navigateToEntryForm(BuildContext context, Item item) async {
    var result = await Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) {
      return EntryForm(item);
    }));
    return result;
  }

  ListView createListView() {
    TextStyle textStyle = Theme.of(context).textTheme.headline5!;
    var realItemCount = itemList.length ~/ 2;

    return ListView.builder(
      itemCount: realItemCount,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red,
              child: Icon(Icons.ad_units),
            ),
            title: Text(
              this.itemList[index].name,
              style: textStyle,
            ),
            subtitle: Text(this.itemList[index].price.toString()),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                //TODO 4 Panggil Fungsi untuk Edit data
                IconButton(
                    onPressed: () async {
                      var item = await navigateToEntryForm(
                          context, this.itemList[index]);

                      if (item.price != null) {
                        int result = await dbHelper.update(item);
                        if (result > 0) {
                          updateListView();
                        }
                        ;
                      }
                      ;
                    },
                    icon: const Icon(Icons.edit)),
                //TODO 3 Panggil Fungsi untuk Hapus data
                IconButton(
                    onPressed: () async {
                      int result =
                          await dbHelper.delete(this.itemList[index].id);
                      updateListView();
                    },
                    icon: const Icon(Icons.delete)),
              ],
            ),
          ),
        );
      },
    );
  }

//update List item
  void updateListView() {
    final Future<Database> dbFuture = dbHelper.initDb();
    dbFuture.then((database) {
//TODO 1 Select data dari DB
      Future<List<Item>> itemListFuture = dbHelper.getItemList();
      itemListFuture.then((itemList) {
        setState(() {
          this.itemList = itemList;
          this.count = itemList.length;
        });
      });
    });
  }
}
