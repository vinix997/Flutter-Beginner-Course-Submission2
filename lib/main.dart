import 'package:flutter/material.dart';

void main() { 
  runApp(new MaterialApp(
    home: new MyApp(),
  )
  );
}
class MyApp extends StatefulWidget {
  @override 
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  String _value = "Hello World";
  int _inc = 0;
  void _onPressed(String value)
  {
    setState(() {
      _value = value;
    });
  }

  
  void _increment()
  {
    setState(() {
      _inc++;  
    });
  }
  void _decrement()
  {
    setState(() {
      _inc--;
    });
  }
  @override
  Widget build(BuildContext context)
  {
    return new Scaffold(
      appBar: new AppBar
      (
        title: new Text('My First App'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(children: <Widget>[
            new Text(_value),
            new Text('$_inc'),
            new RaisedButton(onPressed: ()=>_onPressed("Hello, my name is Chandra Delon"), child: new Text("Click Me")),
            new IconButton(icon: new Icon
            (Icons.add), onPressed: _increment),
            new IconButton(icon: new Icon(Icons.remove), onPressed: _decrement,
            )
          ],
          ),
          ),
      ),
      );
  }
}


