class Item {
  int? _id;
  String? _name;
  int? _price;
  get id => _id;

  set id(value) => _id = value;

  get name => _name;

  set name(value) => _name = value;

  get price => _price;

  set price(value) => _price = value;

  Item(String text, {required int id, required String name, required int price}) : _id = id, _name = name, _price = price;

  Item.fromMap(Map<String, dynamic> map) {
    _id = map['id'];
    _name = map['name'];
    _price = map['price'];
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = _id;
    map['name'] = name;
    map['price'] = price;
    return map;
  }


}
