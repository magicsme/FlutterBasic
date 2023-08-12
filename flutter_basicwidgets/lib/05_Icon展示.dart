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
      body:  IconExtensionDemo(),
    );
  }
}

//Icon字体图标的使用，三种设置方法
class IconExtensionDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Icon(Icons.pets,size: 300,color: Colors.orange,);
    // return Icon(IconData(0xe91d,fontFamily: "MaterialIcons"),size: 300,color: Colors.orange,);
    return Text("\ue91d", style: TextStyle(fontSize: 100, color: Colors.orange));

  }
}