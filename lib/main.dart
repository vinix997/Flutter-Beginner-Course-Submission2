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
  bool _value1 = false;
  bool _value2 = false;
  int _value3 = 0;
  int _value4 = 0;
  bool _value5 = false;
  bool _value6 = false;
  double _angka = 0;
  String tex = "";

  Future datePicker() async
  {
    DateTime picked = await showDatePicker(
      context: context,
    initialDate: new DateTime.now(),
     firstDate: new DateTime(2019), 
     lastDate: new DateTime(2020),);
     if(picked != null) setState(() => tex = picked.toString());
  }

  void _onChange1 (bool value) => setState(() => _value5 = value);
  void _onChange2 (bool value) => setState(() => _value6 = value);

  void _setValue3(int value) => setState(() => _value3 = value);

  void _setValue4(int value) => setState(() => _value4 = value);

    Widget makeRadios()
  {
    List<Widget> list = new List();
    
    for(int i = 0 ; i < 3; i++)
    {
      list.add(new Radio(value: i, groupValue: _value3, onChanged: _setValue3),);
    }
    
    Column column = new Column(
      children: list,);
    return column;
  }

     Widget makeRadioTiles()
  {
    List<Widget> list = new List();
    
    for(int i = 0 ; i < 3; i++)
    {
      list.add(new RadioListTile(
        value: i,
         groupValue: _value4,
          onChanged: _setValue4,
          activeColor: Colors.red,
          controlAffinity: ListTileControlAffinity.trailing,
          title: new Text('Radio $i'),
        ),);
    }
    
    Column column = new Column(
      children: list,);
    return column;
  }
  void _slideChanged(double value) => setState(() => _angka = value);
  void _value1Changed(bool value) => setState(() => _value1 = value);

  void _value2Changed(bool value) => setState(() => _value2 = value);
  
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
          child: new SingleChildScrollView(
          child: new Column(children: <Widget>[
            makeRadios(),
            makeRadioTiles(),
            
            new Text("Are you handsome ?"),
            new CheckboxListTile(
              value: _value2, onChanged: _value2Changed,
              title: new Text('Yes'),
              controlAffinity: ListTileControlAffinity.leading,
              subtitle: new Text("Are you that confident ?"),
              secondary: new Icon(Icons.archive),
              activeColor: Colors.green,
              ),
            new CheckboxListTile(
              value: _value1,
              onChanged: _value1Changed,
              title: new Text('No'),
              controlAffinity: ListTileControlAffinity.leading,
              subtitle: new Text(":'("),
            ),
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
            ),
            new Switch(value: _value5, onChanged: _onChange1,),
            new SwitchListTile(
              value: _value6,
              onChanged: _onChange2,
              title: new Text("Sound" , style: new TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red),
                )
            
            ) ,
            new Text('${(_angka * 100).round()}'),
            new Slider(value: _angka, onChanged: _slideChanged,),
            new Text(tex),
            new RaisedButton(onPressed: datePicker, child: new Text("Click me"))

          ],
          ),
          ),
          ),
      ),
      );
  }
}


