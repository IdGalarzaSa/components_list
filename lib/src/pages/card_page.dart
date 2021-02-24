import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
      ),
      body: ListView(
        children: <Widget>[
          _defaultCard(),
          SizedBox(
            height: 30.0,
          ),
          _basicCard(),
          SizedBox(
            height: 30.0,
          ),
          _cardWithImage(),
        ],
        padding: EdgeInsets.all(10),
      ),
    );
  }

  Container _defaultCard() {
    return Container(
      child: Card(
        child: ListTile(
          title: Text("Este es un titulo"),
        ),
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

  Card _basicCard() {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10,
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.access_alarm,
              color: Colors.blueGrey,
            ),
            title: Text("Este titulo es genial!"),
            subtitle: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
              child: Text(
                  "Este es un subitulo de una tarjeta. Tiene el fin de demostrar el largo de una cadena de texto dentro de una tarjeta para probar su reajuste automatico segun el contenido que maneja"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                child: Text(
                  "Cancelar",
                  style: TextStyle(color: Colors.red),
                ),
                onPressed: () {},
              ),
              FlatButton(
                child: Text(
                  "Aceptar",
                  style: TextStyle(color: Colors.blue),
                ),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  Card _cardWithImage() {
    return Card(
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 15,
      shadowColor: Colors.amber,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(
                "https://miro.medium.com/max/10000/0*wZAcNrIWFFjuJA78"),
            placeholder: AssetImage("lib/assets/jar-loading.gif"),
            fadeInDuration: Duration(milliseconds: 200),
            fit: BoxFit.cover,
          ),
          ListTile(
            title: Text("Esta es una gran pelicula"),
          )
        ],
      ),
    );
  }
}
