import 'package:flutter/material.dart';
import 'package:project_uts/makanan.dart';

class Detail extends StatelessWidget {
  final Makanan makanan;

  const Detail({Key? key, required this.makanan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(makanan.nama),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(makanan.gambar),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    makanan.nama,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Text('Khas : ${makanan.khas}'),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      makanan.description,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
