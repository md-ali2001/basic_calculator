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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage2(),
    );
  }
}

class MyHomePage2 extends StatefulWidget {
  @override
  State<MyHomePage2> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage2> {
  var no1 = TextEditingController();
  var no2 = TextEditingController();
  var result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BASIC CALCULATIONS'),
      ),
      body: Container(
        color: Colors.blue.shade100,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no1,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no2,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            var num1 = int.parse(no1.text.toString());
                            var num2 = int.parse(no2.text.toString());
                            setState(() {
                              result = num1 + num2;
                            });
                          },
                          child: Text('add')),
                      ElevatedButton(
                          onPressed: () {
                            var num1 = int.parse(no1.text.toString());
                            var num2 = int.parse(no2.text.toString());
                            setState(() {
                              result = num1 - num2;
                            });
                          },
                          child: Text('sub')),
                      ElevatedButton(
                          onPressed: () {
                            var num1 = int.parse(no1.text.toString());
                            var num2 = int.parse(no2.text.toString());
                            setState(() {
                              result = num1 * num2;
                            });
                          },
                          child: Text('mult')),
                      ElevatedButton(
                          onPressed: () {
                            var num1 = int.parse(no1.text.toString());
                            var num2 = int.parse(no2.text.toString());
                            setState(() {
                              result = (num1 / num2).ceil();
                            });
                          },
                          child: Text('div'))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "RESULT: $result",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
