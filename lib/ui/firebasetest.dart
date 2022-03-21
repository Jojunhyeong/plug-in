import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('MainPage'),
        actions: [
          Icon(Icons.search),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RaisedButton(
              child: Icon(Icons.add),
              onPressed: () {},
            ),
            FlatButton(
              onPressed: () {},
              child: Icon(Icons.add),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
            ),
            _MyButton(),
          ],
        ),
      ),
    );
  }
}

class _MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<_MyButton> {
  bool _active = false;

  _setActive() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('onTap');
        _setActive();
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: _active ? Colors.red : Colors.black,
            width: 2,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        width: 300,
        height: 80,
        alignment: Alignment.center,
        child: Icon(Icons.add),
      ),
    );
  }
}
