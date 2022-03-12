import 'package:flutter/material.dart';
import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(AnaEkran());
}

class AnaEkran extends StatelessWidget {
  const AnaEkran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[500],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          centerTitle: true,
          title: Text(
            'OTO GALERİ',
            style: TextStyle(
              fontSize: 35.0,
              fontFamily: 'Garamond',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SafeArea(
          child: Menu(),
        ),
      ),
    );
  }
}

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int arabaNo = 1;
  List<String> ozellikler = [
    'MERCEDES-BENZ',
    'AUDI',
    'BMW',
    'FORD',
    'PORSCHE',
    'AMG GT',
    'RS Serisi',
    'M Serisi',
    'Mustang Serisi',
    'Cayenne Serisi',
    '63 S 4Matic',
    'RS 7',
    'M4 Competition',
    '5.0 Fastback',
    '3.0 Diesel',
    'Benzin',
    'Benzin',
    'Benzin',
    'Benzin',
    'Dizel',
    '639 HP',
    '576 HP',
    '510 HP',
    '421 HP',
    '262 HP',
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  arabaNo = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('assets/images/arabaNo_$arabaNo.jpg'),
              style: ButtonStyle(
                overlayColor: MaterialStateColor.resolveWith(
                    (states) => Colors.transparent),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 3.0,
            ),
            color: Colors.grey[500],
            child: ListTile(
              leading: FaIcon(
                FontAwesomeIcons.calendarCheck,
              ),
              title: Text(
                ozellikler[arabaNo - 1],
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 5.0,
            ),
            color: Colors.grey[500],
            child: ListTile(
              leading: FaIcon(
                FontAwesomeIcons.boxOpen,
              ),
              title: Text(
                ozellikler[arabaNo + 4],
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 5.0,
            ),
            color: Colors.grey[500],
            child: ListTile(
              leading: FaIcon(
                FontAwesomeIcons.buffer,
              ),
              title: Text(
                ozellikler[arabaNo + 9],
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 5.0,
            ),
            color: Colors.grey[500],
            child: ListTile(
              leading: FaIcon(
                FontAwesomeIcons.gasPump,
              ),
              title: Text(
                ozellikler[arabaNo + 14],
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 5.0,
            ),
            color: Colors.grey[500],
            child: ListTile(
              leading: FaIcon(
                FontAwesomeIcons.carSide,
              ),
              title: Text(
                ozellikler[arabaNo + 19],
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
