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
      body: FYHomeContent(),
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
    return Text.rich(
        TextSpan(
          children: [
            TextSpan(text: "《定风波》", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black)),
            TextSpan(text: "苏轼", style: TextStyle(fontSize: 18, color: Colors.redAccent)),
            WidgetSpan(child: Icon(Icons.favorite,color: Colors.red,)),
            TextSpan(text: "\n莫听穿林打叶声，何妨吟啸且徐行。\n竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。")
          ],
        )

    );
  }
}