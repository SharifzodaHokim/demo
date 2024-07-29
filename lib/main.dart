import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'HOME '),
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
      backgroundColor: Colors.amber,
      appBar: AppBar(
        leadingWidth: 500,
        backgroundColor: Colors.black,
        title: Text(widget.title,style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            "https://th.bing.com/th/id/OIP.HR7DrEV2L_dTZVv4qdSJtgHaFj?w=283&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 100,
          ),
        
          Text(
            
            "New York",
            
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
          ),
          SizedBox(
            height: 40,
          ),
          Text("Fri 27 Nov 2016" ,

          style: TextStyle( fontSize: 20),),

          SizedBox(
            height: 40,
          ),
          Text("Present tincidunt sed tellus ut rutrum sed vitae justo.",
          style: TextStyle(fontSize:20),
          
          
          ),
        ],
      ),
     
    );
  }
}
