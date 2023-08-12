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
    );
  }
}

//TextField的使用
class FYHomeContent extends StatefulWidget {
  @override
  _FYHomeContentState createState() => _FYHomeContentState();
}

class _FYHomeContentState extends State<FYHomeContent> {
  final userNameTextEditerController = TextEditingController();
  final passwordTextEditerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(primaryColor: Colors.orange),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: userNameTextEditerController,
              decoration: InputDecoration(
                // labelText: "username"
                icon: Icon(Icons.people),
                hintText: "请输入用户名",
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.red[100],
              ),
              onChanged: (value) {
                print("onChanged:$value");
              },
              onSubmitted: (value) {
                print("onSubmitted:$value");
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: passwordTextEditerController,
              decoration: InputDecoration(
                // labelText: "username"
                icon: Icon(Icons.lock),
                hintText: "请输入密码",
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.red[100],
              ),
              onChanged: (value) {
                print("onChanged:$value");
              },
              onSubmitted: (value) {
                print("onSubmitted:$value");
              },
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                child: Text(
                  "登 录",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      backgroundColor: Colors.blue),
                ),
                onPressed: () {
                  final username = userNameTextEditerController.text;
                  final password = passwordTextEditerController.text;
                  userNameTextEditerController.text = "";
                  passwordTextEditerController.text = "";
                  print("用户名：$username   密码：$password");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
