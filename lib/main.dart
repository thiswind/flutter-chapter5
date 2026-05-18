import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chapter 5 Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('第5章 容器类组件')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SizedBox(height: 20),
          const Center(
            child: Text(
              '知识点列表',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 40),
          _buildListItem(
            context,
            title: '5.1 填充（Padding）',
            subtitle: '演示EdgeInsets的四种用法',
            icon: Icons.space_bar,
            page: const PaddingTestRoute(),
          ),
          const SizedBox(height: 16),
          _buildListItem(
            context,
            title: '5.2 装饰容器（DecoratedBox）',
            subtitle: '演示渐变、圆角、阴影效果',
            icon: Icons.brush,
            page: const DecoratedBoxTestRoute(),
          ),
        ],
      ),
    );
  }

  Widget _buildListItem(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
    required Widget page,
  }) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(child: Icon(icon)),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
      ),
    );
  }
}

class PaddingTestRoute extends StatelessWidget {
  const PaddingTestRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('5.1 Padding 填充演示')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Padding(padding: EdgeInsets.only(left: 8), child: Text("你好呀小猫猫")),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text("I am Jack"),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Text("Your friend"),
            ),
          ],
        ),
      ),
    );
  }
}

class DecoratedBoxTestRoute extends StatelessWidget {
  const DecoratedBoxTestRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('5.2 DecoratedBox 装饰容器演示')),
      body: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.red, Colors.orange.shade700],
            ),
            borderRadius: BorderRadius.circular(3.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black54,
                offset: Offset(2.0, 2.0),
                blurRadius: 4.0,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 80.0,
              vertical: 18.0,
            ),
            child: const Text("Login", style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
