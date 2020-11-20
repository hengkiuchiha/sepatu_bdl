import 'package:flutter/material.dart';
import 'package:sepatu/produk_box.dart';

class ProductList extends StatelessWidget {
  String description;

  ProductList({Key key, this.title}): super(key: key);

  final String title;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Produk")),
      body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            ProductBox(
                name: "Adidas NMD",
                description: "Tersedia Ukuran 38-42",
                price: 240000,
                image: "adidas2.png"
            ),
            ProductBox(
                name: "Adidas Retroset",
                description: "Tersedia Ukuran 39-41",
                price: 220000,
                image: "adidas.png"
            ),
            ProductBox(
                name: "Adidas Questar",
                description: "Tersedia Ukuran 40-42",
                price: 200000,
                image: "adidasquestar.jpg"
            ),
            ProductBox(
                name: "Nike Airmax",
                description: "Tersedia Ukuran 37-40",
                price: 150000,
                image: "nike.png"
            ),
            ProductBox(
                name: "Vans Off The Wall",
                description: "Tersedia Ukuran 38-43",
                price: 180000,
                image: "vans.png"
            ),
          ]
      ),
    );
  }
}