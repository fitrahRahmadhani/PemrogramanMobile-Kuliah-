import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Konverter Suhu'),
          backgroundColor: Colors.blue,
        ),
        body: temperaturePage(),
      ),
    );
  }
}

class temperaturePage extends StatefulWidget {
  const temperaturePage({super.key});

  @override
  State<temperaturePage> createState() => _temperaturePageState();
}

class _temperaturePageState extends State<temperaturePage> {
  final _formKey = GlobalKey<FormBuilderState>();
  double _inputUser = 0;
  double _kelvin = 0;
  double _reamur = 0;
  final inputController = TextEditingController();
  String _newValue = "Kelvin";
  double _result = 0;
  List history = [];

  void perhitunganSuhu() {
    setState(() {
      _inputUser = double.parse(inputController.text);
      if (_newValue == "Kelvin"){
      _result = _inputUser + 273;
      history.add('Kelvin: $_result');
      }else if (_newValue == "Fahrenheit"){
      _result = (_inputUser * 9/5) + 32;
      history.add('Fahrenheit: $_result');
      }else{
      _result = (4 / 5) * _inputUser;
      history.add('Reamur: $_result');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: FormBuilder(
              key: _formKey,
              child: FormBuilderTextField(
                name: 'suhu',
                decoration: const InputDecoration(labelText: 'Masukkan suhu (Celcius)'),
                onChanged: (val) {
                  
                  val = '';
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
                width: double.infinity,
                child: DropdownSearch<String>(
                  popupProps: PopupProps.menu(
                    showSelectedItems: true,
                  ),
                  items: ["Kelvin", "Reamur", "Fahrenheit"],
                  dropdownDecoratorProps: DropDownDecoratorProps(
                    dropdownSearchDecoration: InputDecoration(
                      labelText: "Konfersi ke",
                      hintText: "country in menu mode",
                    ),
                  ),
                  onChanged: () {},
                  selectedItem: "Kelvin",
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Column(
              children: [
                Text(
                  'Hasil',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Text(
                  '346.7',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            child: Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      onPrimary: Colors.white,
                      onSurface: Colors.blue[600], // Disable color
                    ),
                    child: Text(
                      'Konversi Suhu',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Text(
              'Riwayat Konversi',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView(),
          ),
        ],
      ),
    );
  }
}

