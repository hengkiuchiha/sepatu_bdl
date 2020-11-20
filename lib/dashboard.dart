import 'package:flutter/material.dart';
import 'package:sepatu/produk_list.dart';


class Dashboard extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toko Sepatu',
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("SEPATU.BDL"),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          children: List.generate(menus.length, (index) {
            return Center(
                child: MenuCard(menu: menus[index])
            );
          }),
        ),
      ),
    );
  }
}

class Menu {
  const Menu({this.title, this.icon});

  final String title;
  final String icon;
}

const List<Menu> menus = const [
  const Menu(title: "Sepatu Pria", icon: "assets/sepatupria.jpg"),
  const Menu(title: "Sepatu Wanita", icon: "assets/sepatuwanita.jpg"),
  const Menu(title: "Sepatu Anak", icon: "assets/sepatuanak.jpg"),
  const Menu(title: "Casual", icon: "assets/sepatucasual.jpg"),
  const Menu(title: "Pantofel", icon: "assets/pantofel.jpg"),
  const Menu(title: "Sneakers", icon: "assets/sneakers.jpg"),


];

class MenuCard extends StatelessWidget {
  const MenuCard({Key key, this.menu}) : super(key: key);

  final Menu menu;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 10,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductList()
            ),
          );
        },
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(5),),
              Expanded(
                  child:
                  Image.asset(menu.icon, height: 80.0, width: 80.0, fit: BoxFit.contain,)
              ),
              Text(menu.title, style: TextStyle(fontSize: 12.0)),
              Padding(padding: EdgeInsets.all(5),),
            ]
        ),
      ),
    );
  }

}


