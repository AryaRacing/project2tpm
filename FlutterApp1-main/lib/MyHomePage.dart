import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'NamaAnggotaPage.dart';
import 'BilanganPrimaPage.dart';
import 'LuasKelilingSegitigaPage.dart';
import 'DaftarSitusPage.dart';
import 'FavoritPage.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Tugas TPM 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NamaAnggotaPage(),
                  ),
                );
              },
              child: Text('Nama Anggota'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BilanganPrimaPage(),
                  ),
                );
              },
              child: Text('Bilangan Prima'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LuasKelilingSegitigaPage(),
                  ),
                );
              },
              child: Text('Luas dan Volume Segitiga'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DaftarSitusPage(),
                  ),
                );
              },
              child: Text('Daftar Situs'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FavoritPage(),
                  ),
                );
              },
              child: Text('Favorit'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            padding: EdgeInsets.all(16),
            gap: 10,
            onTabChange: (index1) {
              print(index1);
            },
            tabs: const [
              GButton(
                icon: Icons.watch,
                text: 'Stopwatch',
              ),
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.help,
                text: 'Bantuan',
              ),
            ],
          ),
        ),
      ),
    );
  }
}