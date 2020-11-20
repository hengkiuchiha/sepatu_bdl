import 'package:flutter/material.dart';
import 'package:sepatu/rating_box.dart';
import 'package:sepatu/detail.dart';

class ProductBox extends StatelessWidget {
  ProductBox({Key key, this.name, this.description, this.price, this.image, }): super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 140,
      child: Card(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                Image.asset("assets/" + image, height: 100.0, width: 100.0),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => Detail(),
                        ),
                        );
                      },

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[

                          Text(this.name, style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          Text("Harga: Rp " + this.price.toString()),
                          RatingBox(),
                        ],
                      ),
                    ),
                  ),
                )
              ]
          )
      ),
    );
  }
}



