import 'package:desafios_comida/Inicial/HomeScreen.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Bruno Alexandre de Souza"),
            backgroundColor: Theme.of(context).primaryColor),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 40.0),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Cart',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold)),
                SizedBox(width: 200.0),
                Text("Close",
                    style: TextStyle(fontSize: 17.0, color: Colors.grey)),
              ],
            ),
            SizedBox(height: 35.0),
            criarRowElement(2, "Hamburguer de Pollo", 59),
            SizedBox(height: 25.0),
            criarRowElement(3, "Tacos al Pastor", 42),
            SizedBox(height: 25.0),
            criarRowElement(1, "Bebida Grande", 25),
            SizedBox(height: 55.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text("Shipping to",
                    style: TextStyle(fontSize: 14.0, color: Colors.grey)),
                Icon(Icons.close, color: Colors.red),
                SizedBox(width: 70.0),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text("Av Solidonad Las Tonis",
                    style: TextStyle(fontSize: 14.0, color: Colors.grey)),
                SizedBox(width: 20.0),
                Text("\$25",
                    style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold)),
                SizedBox(width: 20.0),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text("114, Toluca Mexico",
                    style: TextStyle(fontSize: 14.0, color: Colors.grey)),
                SizedBox(width: 75.0),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text("Service Free",
                    style: TextStyle(fontSize: 14.0, color: Colors.grey)),
                SizedBox(width: 20.0),
                Text("\$25",
                    style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold)),
                SizedBox(width: 20.0),
              ],
            ),
            Divider(height: 30.0, indent: 200.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text("Total",
                    style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold)),
                SizedBox(width: 20.0),
                Text("\$175",
                    style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold)),
                SizedBox(width: 20.0),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => InicioDesafio()),
                      );
                    },
                    child: Container(
                      width: 200.0,
                      height: 45.0,
                      decoration: new BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        border: new Border.all(color: Colors.white, width: 2.0),
                        borderRadius: new BorderRadius.circular(20.0),
                      ),
                      child: new Center(
                        child: new Text(
                          'Check Out',
                          style: new TextStyle(
                              fontSize: 18.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  Widget criarRowElement(int numero, String produto, int valor) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            SizedBox(width: 20.0),
            Icon(
              Icons.remove_circle_outline,
              color: Colors.grey,
              size: 18.0,
            ),
            SizedBox(width: 8.0),
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  "$numero",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(width: 10.0),
            Text("$produto",
                style: TextStyle(fontSize: 17.0, color: Colors.grey)),
          ],
        ),
        //SizedBox(width: 100.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text("\$$valor",
                style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold)),
            SizedBox(width: 20.0),
          ],
        ),
      ],
    );
  }
}
