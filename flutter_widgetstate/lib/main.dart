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
  final List<Widget> widgets = [FYHomeContent()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("计数器"),
      ),
      body: Column(
        children: widgets,
      ),

    );
  }
}

//widget是不加_:暴露给别人使用
class FYHomeContent extends StatefulWidget{
  FYHomeContent(){
    print("1调用FYHomeContentr的constructor");
  }

  @override
  _FYHomeContentState createState(){
    print("调用FYHomeContent的createstate方法");
    return _FYHomeContentState();
  }
}

class _FYHomeContentState extends State<FYHomeContent> {
  int _counter = 0;

  _FYHomeContentState(){
    print("3、调用_FYHomeContentState的constructor方法");
  }
  @override
  void didUpdateWidget(covariant FYHomeContent oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("调用_FYHomeContentState的didUpdateWidget");
  }

  @override
  void initState() {
    //强调：这里必须调用super
    /*
   1、初始化一些东西
   2、报警
    */
    super.initState();
    print("4、调用_FYHomeContentState的initState方法");
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("6、调用_FYHomeContentState的didChangeDependencies方法");
  }
  @override
  // TODO: implement widget
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          child: Icon(Icons.add),
          onPressed: () => {

            setState((){
              _counter ++;
            })
          },
        ),
        Text("数字：$_counter"),
      ],
    );
  }

  @override
  void dispose(){
    super.dispose();
    print("5、调用_FYHomeContentState的dispose方法");
  }

}