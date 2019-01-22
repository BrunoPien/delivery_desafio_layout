import 'package:flutter/material.dart';

class InicioDesafio extends StatefulWidget {
  _InicioDesafioState createState() => _InicioDesafioState();
}

class _InicioDesafioState extends State<InicioDesafio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Bruno Alexandre de Souza"),
            backgroundColor: Theme.of(context).primaryColor),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.room_service,
                  size: 200.0,
                  color: Theme.of(context).primaryColor,
                ),
                Text("Delicious",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 10.0),
                Text("Your food is coming",
                    style: TextStyle(fontSize: 20.0, color: Colors.grey)),
                SizedBox(height: 40.0),
                Container(
                  height: 100,
                  width: 220,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      criarLinha(2, "Hamburguesa de Pollo"),
                      criarLinha(3, "Tacos al Pastor"),
                      criarLinha(3, "Tacos al Pastor"),
                    ],
                  ),
                ),
                 SizedBox(height: 100.0),
                      InkWell(
                        onTap: () {Navigator.of(context).pop();},
                        child: Text("Back to",
                          style: TextStyle(fontSize: 17.0, color: Colors.grey)),
                      ),
              ],
            ),
          ],
        ));
  }

  Widget criarLinha(int numero, String texto) {
    return Row(
      children: <Widget>[
        Text(numero.toString(),
            style: TextStyle(
                fontSize: 20.0,
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold)),
        SizedBox(width: 10.0),
        Text(texto, style: TextStyle(fontSize: 17.0, color: Colors.grey)),
      ],
    );
  }
}
