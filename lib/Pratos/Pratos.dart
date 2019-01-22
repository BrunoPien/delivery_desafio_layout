import 'package:flutter/material.dart';

class PratosScreen extends StatefulWidget {
  _PratosScreenState createState() => _PratosScreenState();
}

class _PratosScreenState extends State<PratosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            title: Text("Bruno Alexandre de Souza"),
            backgroundColor: Theme.of(context).primaryColor),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                SizedBox(width: 20.0,),
                xCreateCardbyBruno()
              ],
            ),
          ],
        ));
  }

  
  Widget xCreateCardbyBruno() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.90,
      height: MediaQuery.of(context).size.height * 0.05,
      child: Card(),
    );
  }


}
