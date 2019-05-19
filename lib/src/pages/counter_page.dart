import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  State<CounterPage> createState() => new _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final TextStyle _styleText = new TextStyle(fontSize: 25);
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primera App Flutter Stateful'),
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
              style: _styleText,
            ),
            Text(
              // counter.toString(),
              '$_counter',
              style: _styleText,
            ),
          ],
        ),
      ),
      floatingActionButton: _createButtons(_counter),
    );
  }

  Widget _createButtons(int counter) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      SizedBox(
        width: 30.0,
      ),
      FloatingActionButton(
        onPressed: () => _add(),
        child: Icon(Icons.add),
        elevation: 5.5,
      ),
      Expanded(
        child: SizedBox(
          width: 5.0,
        ),
      ),
      FloatingActionButton(
        onPressed: () => _reset(),
        child: Icon(Icons.restore),
        elevation: 5.5,
      ),
      Expanded(
        child: SizedBox(
          width: 5.0,
        ),
      ),
      FloatingActionButton(
        onPressed: () => _remove(),
        child: Icon(Icons.remove),
        elevation: 5.5,
      ),
    ]);
  }

  void _add() {
    setState(() => _counter++);
  }

  void _remove() {
    setState(() {
      if (_counter > 0) _counter--;
    });
  }

  void _reset() {
    setState(() => _counter = 0);
  }
}
