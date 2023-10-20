import 'package:flutter/material.dart';
import 'package:project_uts/detail.dart';
import 'package:project_uts/makanan.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Masakan Nusantara'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            dataMakanan.length,
            (index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Detail(
                        makanan: dataMakanan[index],
                      ),
                    ),
                  );
                },
                child: Card(
                  elevation: 5,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage(dataMakanan[index].gambar),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                dataMakanan[index].nama,
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ),
                            Row(
                              children: [
                                const Icon(Icons.location_pin, size: 20),
                                const SizedBox(width: 2),
                                Text(
                                  dataMakanan[index].khas,
                                  style: const TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
