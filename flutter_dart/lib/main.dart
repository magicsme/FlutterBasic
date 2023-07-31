import 'package:flutter/material.dart';

void main() {
  // runApp(const MyApp());
  // ======================= part-01 variable ==================
  variabledeclaration();
  // ======================= part-02 function ==================
  functionDefine();
  // ======================= part-03 mixin  ==================

  // ======================= part-04 异步支持  ==================
  asyncfunc();
  // ======================= part-05 stream  ==================
  streamFunc();
}

// ======================= part-01 variable ==================

//dart - variable declaration
void variabledeclaration() {
  // print hello world!
  sayHello();
  objects();
  constantset();
  nullsafety();
}

//01-var
void sayHello() {
  var t = "hello world";
  print(t);
}

//02-object, dynamic
void objects() {
  dynamic t;
  Object x;
  t = "hi world";
  x = "Hello Object";

  //T
  t = 1000;
  x = 10000;

  print(t);
  print(x);
}

//03- final & const
void constantset() {
  //可以省略String这个类型声明
  final str = "hi world";
//final String str = "hi world";
  const str1 = "我在编译时修改";
  //const String str1 = "hi world";
  print(str);
  print(str1);
}

//04-null-safety
void nullsafety() {
  int i = 1;
  if (i != null) {
    print(i * 8);
  }
}

// ======================= part-02function ==================

void functionDefine() {
  // bool isNoble (int atomicNumber) => true;
  //  print(isNoble(0));
  funcVariable();

  execute(() => print("xxx"));
  print(say("Bob", "HowDy"));
  print(say('bob', 'howdy', "someone"));
}

//01 - function declaration

// bool isNoble(int atomicNumber){
//   return  _nobleGases[atomicNumber] != null;
// }

//02 - function as variable

void funcVariable() {
  var say = (str) {
    print(str);
  };
  say("hi, world!");
}

//03- function passed as parameter
void execute(var callback) {
  callback();
}

String say(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = "$result with a $device";
  }
  return result;
}

// ======================= part-03 mixin  ==================

class Person {
  say() {
    print("say");
  }
}

mixin Eat {
  eat() {
    print('eat');
  }
}
mixin Walk {
  walk() {
    print("walk");
  }
}
mixin Code {
  code() {
    print('key');
  }
}

class Dog with Eat, Walk {}

class Man extends Person with Eat, Walk, Code {}

// ======================= part-04 异步支持  ==================

void asyncfunc() {
  asyncThen();
  asyncCatchError();
  asyncOnError();
  asyncWait();
}

void asyncThen() {
  Future.delayed(Duration(seconds: 2), () {
    return "hi world!";
  }).then((data) {
    print(data);
  });
}

void asyncCatchError() {
  Future.delayed(Duration(seconds: 2), () {
    throw AssertionError("TestError");
  }).then((data) {
    //执行成功会走到这里
    print("sucess");
  }).catchError((e) {
    //执行失败会走到这里
    print(e);
  });
}

void asyncOnError() {
  Future.delayed(Duration(seconds: 2), () {
    throw AssertionError("Error");
  }).then((data) {
    print("sucess");
  }, onError: (e) {
    print(e);
  });
}

void aysyncWhenComplete() {
  Future.delayed(Duration(seconds: 2), () {
    throw AssertionError("Error");
  }).then((data) {
    //执行成功会走到这里
    print(data);
  }).catchError((e) {
    //执行失败会走到这里
    print(e);
  }).whenComplete(() {
    //无论成功或失败都会走到这里
  });
}

void asyncWait() {
  Future.wait([
    //2秒后返回结果
    Future.delayed(Duration(seconds: 2), () {
      return "hello";
    }),
    // 4秒后返回结果
    Future.delayed(Duration(seconds: 4), () {
      return " world";
    })
  ]).then((results) {
    print(results[0] + results[1]);
  }).catchError((e) {
    print(e);
  });
}

// ======================= part-05 stream  ==================

void streamFunc() {
  Stream.fromFutures([
    Future.delayed(Duration(seconds: 1), () {
      return "hello i";
    }),
    Future.delayed(Duration(seconds: 2), () {
      throw AssertionError("Error");
    }),
    Future.delayed(Duration(seconds: 3), () {
      return "Hello 3";
    })
  ]).listen((data) {
    print(data);
  }, onError: (e) {
    print(e.message);
  }, onDone: () {});
}
