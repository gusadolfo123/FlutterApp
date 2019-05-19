import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextStyle styleText = new TextStyle(fontSize: 25);
  final int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primera App Flutter'),
        centerTitle: true,
        elevation: 5.5,
      ),
      body: Center(
        // child: Text('Numero de Clicks: '),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Numero de Clicks:',
              style: styleText,
            ),
            Text(
              // counter.toString(),
              '$counter',
              style: styleText,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        elevation: 5.5,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
