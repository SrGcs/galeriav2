import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const showGrid = true; // set to false to show ListView


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Galeria con GridView y ListView',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Galeria con Gridview y ListView'),
        ),
        body: Center(child: showGrid ? _buildGrid() : _buildGrid()),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                ),
                child: Container(
                  child: Column(
                    children: const [
                      Text(
                        'Sena CBA',
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        'Bienvenidos',
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: const [
                  ListTile(
                      title: Text("Inicio"),
                      leading: Icon(Icons.home)
                  ),
                  Divider(
                    height: 0.2,
                  ),
                  ListTile(
                    title: Text("Tiendas"),
                    leading: Icon(Icons.shopping_cart),
                  ),
                  ListTile(
                    title: Text("Promociones"),
                    leading: Icon(Icons.shopping_cart),
                  ),
                  ListTile(
                    title: Text("Categorias"),
                    leading: Icon(Icons.category),
                  ),
                  Divider(
                    height: 0.2,
                  ),
                  ListTile(
                    title: Text("email"),
                    leading: Icon(Icons.mail),
                  ),
                  ListTile(
                      title: Text("Soporte"),
                      leading: Icon(Icons.contact_phone_sharp)
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            elevation: 8.0,
            child: const Icon(Icons.add),
            onPressed: () {
              print('Soy un boton de acción flotante');
            }
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(icon: const Icon(Icons.menu), onPressed: () {},),
              IconButton(icon: const Icon(Icons.search), onPressed: () {},),
            ],
          ),
        ),
      ),
    );
  }

  // #inicia_construccion_con_Gridview
  Widget _buildGrid() =>
      GridView.extent(
          maxCrossAxisExtent: 300,
          padding: const EdgeInsets.all(4),
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: _buildGridTileList(30)); //GridView.extent


  List<Container> _buildGridTileList(int count) =>
      List.generate(
          count, (i) => Container(child: Image.asset('images/pic$i.jpg'))
      );


  Widget _buildList() {
    return ListView(
      children: [
        _tile('CineArts at the empire', '85 w portal ave', Icons.theaters),
        _tile('CineArts at the empire', '85 w portal ave', Icons.theaters),
        _tile('CineArts at the empire', '85 w portal ave', Icons.theaters),
        _tile('CineArts at the empire', '85 w portal ave', Icons.theaters),
        _tile('CineArts at the empire', '85 w portal ave', Icons.theaters),
        _tile('CineArts at the empire', '85 w portal ave', Icons.theaters),
        const Divider(),
        _tile('CineArts at the empire', '85 w portal ave', Icons.theaters),
        _tile('CineArts at the empire', '85 w portal ave', Icons.theaters),
        _tile('CineArts at the empire', '85 w portal ave', Icons.theaters),
        _tile('CineArts at the empire', '85 w portal ave', Icons.theaters),
      ],
    );
  }

  ListTile _tile(String title, String subtitle, IconData icon) {
    return ListTile(
      title: Text(title,
          style: const TextStyle(fontWeight: FontWeight.w500,
          fontSize: 20,
          )),
      subtitle: Text(subtitle),
      leading: Icon(
        icon,
        color: Colors.deepOrangeAccent,
      ),
    );
  }
}