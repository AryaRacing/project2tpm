import 'package:flutter/material.dart';

class BantuanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bantuan'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Petunjuk penggunaan aplikasi
            Text(
              'Petunjuk penggunaan aplikasi',
              style: TextStyle(fontSize: 20),
            ),
            // Tombol log out
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman login dan hapus semua rute di atasnya
                Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
              },
              child: Text('Log Out'),
            ),
          ],
        ),
      ),
    );
  }
}
