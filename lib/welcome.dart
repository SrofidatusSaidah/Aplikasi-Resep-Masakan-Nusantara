import 'package:flutter/material.dart';
import 'package:project_uts/homepage.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/Nusantara.jpg"),
          SizedBox(height: 10),
          Text(
            "Selamat datang di Aplikasi Resep Masakan Nusantara!",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Temukan kelezatan dari seluruh penjuru Indonesia dengan koleksi resep yang kaya akan rasa dan budaya. Selamat Memasak!",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFFF2F08),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Ayo Mulai",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
