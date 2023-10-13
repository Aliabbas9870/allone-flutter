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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Learn',
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(color: Colors.black, fontSize: 20.0),
        ),
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 2, 31, 3)),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: 'Ali Abbas CS Working ',
      ),
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
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
       // child:Image.asset("assets/images/car2.jpeg"),
        child: Container(
          
          child:Image(
            image:AssetImage("assets/images/grl.jpeg",),
            
          ),
          
        
          width: 300,
          height: 110,
          color: Colors.deepPurple,
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
