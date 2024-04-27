import 'package:flutter/material.dart';
import 'DaftarSitusPage.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class FavoritPage extends StatefulWidget {
  @override
  _FavoritPageState createState() => _FavoritPageState();
}

class _FavoritPageState extends State<FavoritPage> {
  final List<Situs> _favoritSitus = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorit'),
      ),
      body: _favoritSitus.isEmpty
          ? Center(
              child: Text('Tidak ada situs favorit'),
            )
          : ListView.builder(
              itemCount: _favoritSitus.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: IconButton(
                    icon: Icon(Icons.favorite),
                    onPressed: () {
                      setState(() {
                        _favoritSitus.removeAt(index);
                      });
                    },
                  ),
                  title: Text(_favoritSitus[index].nama),
                  subtitle: Text(_favoritSitus[index].url),
                );
              },
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
            tabs: [
              GButton(
                icon: Icons.watch,
                text: 'Stopwatch',
              ),
              GButton(
                icon: Icons.home,
                text: 'Home',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DaftarSitusPage(),
                    ),
                  );
                },
              ),
              GButton(
                icon: Icons.favorite,
                text: 'Favorit',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
