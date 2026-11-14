import 'package:flutter/material.dart';

void main() {
  runApp(Tes());
}

class Tes extends StatelessWidget {
  List<String> menu = ["Soto", "Rawon"];

  List<int> harga = [10000, 15000];

  List<String> gambar = ["assets/soto.jpg", "assets/rawon.jpg"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Menu Makanan"),
        ),
        body: Table(
          border: TableBorder.all(width: 2),
          children: [
            // Header
            TableRow(
              children: [
                Text("No"),
                Text("Gambar"),
                Text("Menu"),
                Text("Harga"),
                Text("Porsi"),
              ],
            ),

            // Perulangan menampilkan data
            for (int i = 0; i < menu.length; i++)
              TableRow(
                children: [
                  Text("${i + 1}"),

                  Image.asset(
                    gambar[i],
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),

                  Text(menu[i]),

                  Text("Rp ${harga[i]}"),

                  // TextField untuk porsi
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "Jumlah",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
