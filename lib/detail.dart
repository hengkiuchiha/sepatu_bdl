import 'package:flutter/material.dart';
import 'package:sepatu/rating_box.dart';


class Detail extends StatelessWidget {
  String description;

  Detail({Key key, this.title}): super(key: key);

  final String title;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Adidas NMD"),),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset("assets/adidas2.png"),
                Expanded(
                    child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text("Adidas NMD", style:
                            TextStyle(fontWeight: FontWeight.bold)),
                            Text("Tersedia Ukuran 38-42"),
                            Text("Harga: Rp 240000 " ),
                            RatingBox(),
                          ],
                        )
                    )
                )
              ]
          ),
        ),
      ),
    );
  }
}