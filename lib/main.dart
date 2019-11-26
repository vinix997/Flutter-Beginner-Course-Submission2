import 'package:flutter/material.dart';

void main() { 
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
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
  String _string = "";
  void _onChanged(String string)
  {
    setState(() {
      _string = string;
    });
  }
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
            new Text(_string),
            new TextField(decoration: new InputDecoration(
              labelText: "Username",
              hintText: "Input your username",
              icon: new Icon(Icons.people),
              
              
            ),
            autocorrect: true,
            autofocus: true,
            onChanged: _onChanged,
            ),
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


