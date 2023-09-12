import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Artikel'),
          backgroundColor: Colors.red,
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Expanded(
                      child: Container(
                          color: Colors.grey,
                          height: 70,
                          child: Center(
                            child: Text(
                              'BERITA TERBARU',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ))),
                  Expanded(
                      child: Container(
                          color: Colors.grey,
                          height: 70,
                          child: Center(
                            child: Text(
                              'PERTANDINGAN HARI INI',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ))),
                ],
              ),
              Column(
                children: [
                  Container(
                    child: Image(
                        image: NetworkImage(
                            'https://image-prod.iol.co.za/16x9/800/Manchester-City-s-Norwegian-striker-Erling-Haaland-poses-with-the-Premier-League-trophy-on-the-pitch-after-the-presentation-following-the-English-Premier-League-football-match-between-Manchester-City-and-Chelsea-at-the-Etihad-Stadium-in-Manchester-north-west-England-on-May-21-2023-Photo-by-Oli-SCARFF-AFP?source=https://xlibris.public.prod.oc.inl.infomaker.io:8443/opencontent/objects/a71dd7e3-8595-523f-97d2-6360cc7718e1&operation=CROP&offset=0x69&resize=6888x3870')),
                  ),
                  Container(
                    height: 70,
                    color: Colors.lightBlue,
                    child: Center(
                      child: Text(
                          'Manchester City Treble Winners, Samai Rekor Manchester United',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Column(
                              children: [
                                Container(
                                  color: Colors.blueGrey[100],
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: Container(
                                              color: Colors.grey,
                                              child: Center(
                                                  child: Image(
                                                image: NetworkImage(
                                                    'https://cdns.klimg.com/bola.net/library/upload/21/2023/08/645x430/indo-2_331da16.jpg'),
                                                fit: BoxFit.cover,
                                              )))),
                                      Expanded(
                                          child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10),
                                              child: Center(
                                                child: Text(
                                                  'Klasemen Grup K Kualifikasi Piala Asia 2023: Timnas Indonesia di Posisi Berapa?',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ))),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 50,
                                  color: Colors.grey,
                                  child: Center(
                                    child: Text(
                                        'Serafin Unus Pasi | 6 September 2023 23:32',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        )),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            Column(
                              children: [
                                Container(
                                  color: Colors.blueGrey[100],
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: Container(
                                              color: Colors.grey,
                                              child: Center(
                                                  child: Image(
                                                image: NetworkImage(
                                                    'https://cdns.klimg.com/bola.net/library/upload/21/2023/08/645x430/indo-2_331da16.jpg'),
                                                fit: BoxFit.cover,
                                              )))),
                                      Expanded(
                                          child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10),
                                              child: Center(
                                                child: Text(
                                                  'Klasemen Grup K Kualifikasi Piala Asia 2023: Timnas Indonesia di Posisi Berapa?',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ))),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 50,
                                  color: Colors.grey,
                                  child: Center(
                                    child: Text(
                                        'Serafin Unus Pasi | 6 September 2023 23:32',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        )),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
