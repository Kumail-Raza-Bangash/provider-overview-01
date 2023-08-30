// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  void increment(){
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.blue[100],
              padding: const EdgeInsets.all(10),
              child: Text(
                'HomePage', style: TextStyle(fontSize: 20.0),
              ),
            ),
            SizedBox(height: 20.0,),
            CounterA(
              counter: counter,
              increment: increment,),
            SizedBox(height: 20.0,),
            Middle(counter: counter),

            
                      ],
        ),
      ),
    );
  }
}

class CounterA extends StatelessWidget {
  final int counter;
  final void Function() increment;
  const CounterA({
    Key? key,
    required this.counter,
    required this.increment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[100],
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text('$counter',style: TextStyle(fontSize: 20.0)),
          ElevatedButton(
            onPressed: increment, 
          child: Text('increment', style: TextStyle(fontSize: 20.0),),),
        ],
      ),
    );
  }
}

class Middle extends StatelessWidget {
  final int counter;

  const Middle({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
        CounterB(counter: counter),
        SizedBox(height: 20,),
        Sibling(),
      ],),
    );
  }
}

class CounterB extends StatelessWidget {
  final int counter;
  const CounterB({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[100],
      padding: const EdgeInsets.all(20.0),
      child: Text(
        '$counter', style: TextStyle(fontSize: 20.0)
      ),
    );
  }
}

class Sibling extends StatefulWidget {
  const Sibling({super.key});

  @override
  State<Sibling> createState() => _SiblingState();
}

class _SiblingState extends State<Sibling> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[100],
      padding: const EdgeInsets.all(20.0),
      child: Text('Subling', style: TextStyle(fontSize: 20.0)),
    );
  }
}