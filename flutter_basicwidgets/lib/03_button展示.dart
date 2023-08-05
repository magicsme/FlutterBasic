import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FYHomePage(),
    );
  }
}

class FYHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("基础widget"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      body: FYHomeContent(),
      floatingActionButton: new FloatingActionButton(
        tooltip: 'Increment',
        onPressed: null,
        child: new Icon(Icons.add),
      ),
    );
  }
}

class FYHomeContent extends StatefulWidget {
  @override
  _FYHomeContentState createState() => _FYHomeContentState();
}

class _FYHomeContentState extends State<FYHomeContent>{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          child: Text("RaisedButton"),
          onPressed: () {
            print("ElevatedButton Click");
          },
        ),
        TextButton(
          child: Text("TextButton"),
          onPressed: () {
            print("TextButton Click");
          },
        ),
        OutlinedButton(
          child: Text("OutlineButton"),
          onPressed: () {
            print("OutlineButton Click");
          },
        ),
        ElevatedButton(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.favorite, color: Colors.red,),
                Text("喜欢作者"),
              ],
            ),
            onPressed: () {
              print("ElevatedButton Click");
            },
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
            )
        ),

      ],
    );
  }
}