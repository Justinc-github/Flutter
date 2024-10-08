import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//也可以写作
// void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  /* 声明了一个常量构造函数，它使得Flutter在编译时就确定MyApp对象的结构，而不是在运行时动态创建。
  这可以提升一定性能，在编译时优化常量对象的创建过程，并且在多个地方使用同一个常量对象时可以减少内存使用。
   */
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 应用名称
      title: 'Flutter Demo',
      // 主题设置
      theme: ThemeData(
        // 主题颜色
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // 是否使用Material 3的设计规范
        useMaterial3: true,
      ),
      // 应用首页路由
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // 用于记录按钮点击的总次数
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
