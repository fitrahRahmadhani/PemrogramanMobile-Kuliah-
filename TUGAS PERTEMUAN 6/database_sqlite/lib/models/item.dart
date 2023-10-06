class Item {
  int? _id;
  String? _name;
  int? _price;
  String? _kodeBarang;
  int? _stock;
  get id => _id;

  set id(value) => _id = value;

  get name => _name;

  set name(value) => _name = value;

  get price => _price;

  set price(value) => _price = value;

  get kodeBarang => _kodeBarang;

  set kodeBarang(value) => _kodeBarang = value;

  get stock => _stock;

  set stock(value) => _stock = value;

  Item.origin({required String name, required int price, required String kodeBarang, required int stock}) :  _name = name, _price = price, _kodeBarang = kodeBarang, _stock = stock;

  Item.fromMap(Map<String, dynamic> map) {
    _id = map['id'];
    _name = map['name'];
    _price = map['price'];
    _kodeBarang = map['kodeBarang'];
    _stock = map['stock'];
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = _id;
    map['name'] = name;
    map['price'] = price;
    map['kodeBarang'] = kodeBarang;
    map['stock'] = _stock;
    return map;
  }


}
