import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
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
      body: Column(
        children: [
          Expanded(
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              padding: const EdgeInsets.all(10),
              children: [
                Container(
                  color: Colors.red,
                  height: 250,
                ),
                Container(
                  color: Colors.blue,
                  height: 250,
                ),
                Container(
                  color: Colors.green,
                  height: 250,
                ),
                Container(
                  color: Colors.orange,
                  height: 250,
                ),
                Container(
                  color: Colors.purple,
                  height: 250,
                ),
                Container(
                  color: Colors.yellow,
                  height: 250,
                ),
                Container(
                  color: Colors.cyan,
                  height: 250,
                ),
                Container(
                  color: Colors.pink,
                  height: 250,
                ),
                Container(
                  color: Colors.lime,
                  height: 250,
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/foto.jpg', 
            height: 200, 
            fit: BoxFit.cover, 
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
