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
        title: Text("计数器"),
      ),
      body: FYHomeContent("你好啊，Mrlee"),
    );
  }
}

//widget是不加_:暴露给别人使用
class FYHomeContent extends StatefulWidget{
  final String message;
  FYHomeContent(this.message);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FYHomeContentState();
  }
}
/**
 * 为什么flutter在设计的时候statefulwidget的build方法放在state中
 * 1、build出来的widget是需要依赖state中的变量（状态/数据）
 * 2、在我们flutter运行过程中，
 *    widget是不断的销毁创建的，widget是一个描述信息
 *    当我们自己的状态发生改变时，并不希望重新创建一个新的state
 */

//State是加_:状态这个类中是给widget使用
class _FYHomeContentState extends State<FYHomeContent> {
  int _counter = 0;

  @override

  // TODO: implement widget
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _getButton(),
          Text("当前计数：$_counter"),
          Text("传递过来的信息：${widget.message}")
        ],
      ) ,
    );
  }

  Widget _getButton(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            elevation: 10,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          ),
          child: Text("+",style: TextStyle(fontSize: 40,color: Colors.green),),
          onPressed: () => {
            setState((){
              _counter ++;
            })
          },
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey,
            elevation: 10,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          ),
          child: Text("-",style: TextStyle(fontSize: 40,color: Colors.pink),),
          onPressed: () => {
            setState((){
              _counter --;
            })
          },
        )
      ],
    );
  }
}