import 'package:flutter/material.dart';

main() => runApp(MyApp());

// void main() {
//   runApp(FYHomePage());
// }
/**
 * widget
 * 有状态，statefulWidget在运行过程中有一些数据，需要改变时
 * 无状态,statelesswidget内容确定没有状态
 */
class MyApp extends StatelessWidget{
  //build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: true,
        home: FYHomePage()
    );
  }
}


class FYHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext content){
    return Scaffold(
        appBar: AppBar(
          title: Text("第一个flutter程序"),
        ),
        body: FYContentBody()
    );
  }
}

class FYContentBody extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(value: true,
              onChanged: (value) => print(value)
          ),

          Text("hello")
        ],
      ),
    );
  }
}