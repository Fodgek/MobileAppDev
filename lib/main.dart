import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Stein Gate Lovers'),
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
  bool value = false;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _incrementCounter2() {
    setState(() {
      _counter = _counter + 2;
    });
  }
  void _incrementCounter3() {
    setState(() {
      _counter = _counter + 3;
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
         child: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 70,
                backgroundColor: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(8), // Border radius
                  child:
                  ClipOval(
                      child:Image.asset (
                        "assets/gif/test.gif")
                  ),
                ),
              ),
              Container(
                  color: Colors.amber,
                  padding: EdgeInsets.all(10),
                  margin:  EdgeInsets.all(10),
                  child:
                  const Text("Серебреницкий Никита Антонович",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                          fontSize: 26
                      )
                  )
              ),
              Container(
                  color: Colors.blueAccent,
                  padding: EdgeInsets.all(10),
                  margin:  EdgeInsets.all(10),
                  child:
                  const Text("я не знаю какой функционал встваить,будет вот такой:",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26
                      )
                  )
              ),
              OverflowBar(
                alignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  TextButton( child: const Text('Button +1'), onPressed: _incrementCounter),
                  TextButton( child: const Text('Button +2'), onPressed: _incrementCounter2),
                  TextButton( child: const Text('Button +3'), onPressed: _incrementCounter3),
                ],
              ),
              OverflowBar(
                alignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Checkbox(
                    value: this.value,
                    onChanged: (bool? value) {setState(() {this.value = value!;});},
                  ),
                  Checkbox(
                    value: this.value,
                    onChanged: (bool? value) {setState(() {this.value = value!;});},
                  ),
                  Checkbox(
                    value: this.value,
                    onChanged: (bool? value) {setState(() {this.value = value!;});},
                  ),
                ],
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(10),
                margin:  EdgeInsets.all(10),
                child:
                Text("$_counter",
                    style: const TextStyle(color: Colors.green,fontSize: 26,)
                ),
              ),
              Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(10),
                  margin:  EdgeInsets.all(10),
                  child:
                  Text("$value",
                      style: const TextStyle(color: Colors.red,fontSize: 26,)
                  )
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
