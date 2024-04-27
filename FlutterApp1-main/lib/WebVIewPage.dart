import 'package:flutter/material.dart';
import 'DaftarSitusPage.dart';

class WebViewPage extends StatelessWidget {
  final String url;

  const WebViewPage({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Web View'),
      ),
    );
  }
}

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
                final situs = _favoritSitus[index];
                return ListTile(
                  leading: IconButton(
                    icon: Image.asset('assets/love.png'),
                    onPressed: () {
                      setState(() {
                        final index = _favoritSitus.indexOf(situs);
                        if (index != -1) {
                          _favoritSitus.removeAt(index);
                        }
                      });
                    },
                  ),
                  title: Text(situs.nama),
                  subtitle: Text(situs.url),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WebViewPage(url: situs.url),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
}
