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

     // body: FYImageAssetsImage(),
     // body:  FYImageNetWorkImage(),
     body: FYCircleAvatar(),
   );
 }
}

//加载本地图片
class FYImageAssetsImage extends StatefulWidget {
  @override
  _FYImageAssetsImage createState() => _FYImageAssetsImage();
}

class _FYImageAssetsImage extends State<FYImageAssetsImage>{
  final imageURL = "https://img2.baidu.com/it/u=417858554,4138815859&fm=253&fmt=auto&app=120&f=JPEG?w=1422&h=800";
  @override
  Widget build(BuildContext context) {
    return Image(
        image: AssetImage("assets/images/test.png"),
    );
  }
}

//加载网络图片
class FYImageNetWorkImage extends StatefulWidget {
  @override
  _FYImageNetWorkImage createState() => _FYImageNetWorkImage();
}

class _FYImageNetWorkImage extends State<FYImageNetWorkImage>{
  final imageURL = "https://img2.baidu.com/it/u=417858554,4138815859&fm=253&fmt=auto&app=120&f=JPEG?w=1422&h=800";
  @override
  Widget build(BuildContext context) {
    return Image(
        color: Colors.purple,
        colorBlendMode: BlendMode.colorDodge,
        image:NetworkImage(imageURL),
        width: 200,
        height: 200,
        fit: BoxFit.fitHeight,
        repeat:  ImageRepeat.repeatY,
      // alignment: Alignment.bottomCenter,
      // 范围-1，1
        alignment: Alignment(0,-10),
    );
  }
}

//绘制圆形头像
class FYCircleAvatar extends StatefulWidget {
  @override
  _FYCircleAvatar createState() => _FYCircleAvatar();
}

class _FYCircleAvatar extends State<FYCircleAvatar>{
  final imageURL = "https://img1.baidu.com/it/u=2197437574,3305255155&fm=253&fmt=auto&app=138&f=JPEG?w=400&h=400";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: 100,
        backgroundImage: NetworkImage(imageURL),
        child: Container(
          alignment: Alignment(0,.5),
          width: 200,
          height: 200,
          child: Text("可爱头像"),
        ),
      ),
    );
  }
}