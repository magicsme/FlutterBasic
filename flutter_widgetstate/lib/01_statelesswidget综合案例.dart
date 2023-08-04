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
        title: Text("商品列表"),
      ),
      body: FYHomeContent(),
    );
  }
}

class FYHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        FYHomeProductItem("car1","desc1","https://img-blog.csdnimg.cn/63efe7acbac74e7ebce85e3801f948e3.jpeg"),
        SizedBox(height: 6),
        FYHomeProductItem("car1","desc2","https://img0.baidu.com/it/u=3727397839,921490094&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=500"),
        SizedBox(height: 6),
        FYHomeProductItem("car1","desc3","https://img1.baidu.com/it/u=2998038743,532699456&fm=253&fmt=auto&app=120&f=JPEG?w=1280&h=800"),
      ],
    );
  }
}

//widget中的所有成员变量必须是final的
class FYHomeProductItem extends StatelessWidget{
  final String title;
  final String desc;
  final String imageURL;

  final style1 =  TextStyle(fontSize: 25,color: Colors.orange);
  final style2 =  TextStyle(fontSize: 20,color: Colors.green);

  FYHomeProductItem(this.title, this.desc, this.imageURL);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          border: Border.all(
            width: 5,//设置边框的宽度
            color: Colors.pink, //设置边框颜色
          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(title,style:style1,),
            ],
          ),
          SizedBox(height: 8),
          Text(desc, style: style2),
          SizedBox(height: 8),
          Image.network(imageURL)

        ],
      ),
    );
  }
}