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

//flag: state
//stateful 不能定义状态 -》创建一个单独的类，这个类免责维护状态
class FYContentBody extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return FYContentBodyState();
  }
/*
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
  }*/
}

class FYContentBodyState extends State<FYContentBody> {
  var flag = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
              value: flag,
              onChanged: (value) {
                setState(() {
                  flag = value!;
                },);
              }),
          Text("同意协议", style: TextStyle(fontSize: 20))
        ],
      ),
    );
  }
}