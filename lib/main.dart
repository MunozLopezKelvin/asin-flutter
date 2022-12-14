import 'package:flutter/material.dart';

import 'services/mockapi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Async App - PM',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xfffff8e1),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color.fromARGB(255, 255, 0, 0),
          secondary: Color.fromARGB(255, 17, 5, 5),
        ),
      ),
      home: const TareaAsync(title: 'Paul Muñoz'),
    );
  }
}

class TareaAsync extends StatefulWidget {
  const TareaAsync({super.key, required this.title});

  final String title;

  @override
  State<TareaAsync> createState() => _TareaAsyncState();
}

class _TareaAsyncState extends State<TareaAsync> {
  //DECLARACIONES DE VARIABLES
  int t = 0;
  int t_time = 0;
  double t_with = 0;
  int ttext = 0;

  int c = 0;
  int c_time = 0;
  double c_with = 0;
  int c_text = 0;

  int w = 0;
  int w_time = 0;
  double w_with = 0;
  int w_text = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        titleTextStyle: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        centerTitle: true,
      ),
      body: Center(
          child: Container(
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Ink(
              decoration: ShapeDecoration(
                color: Colors.green.shade300,
                shape: const CircleBorder(),
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.flash_on,
                  color: Colors.black,
                ),
                iconSize: 80.0,
                onPressed: () async {
                  setState(() {
                    t_with = 300;
                    t_time = 1;
                  });
                  t = await MockApi().getFerrariInteger();
                  setState(() {
                    ttext = t;
                    t_time = 0;
                    t_with = 0;
                  });
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: AnimatedContainer(
                  width: t_with,
                  height: 15,
                  decoration: BoxDecoration(color: Colors.green.shade300),
                  duration: Duration(seconds: t_time)),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: Text(
                t.toString(),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Ink(
              decoration: ShapeDecoration(
                color: Colors.orange.shade300,
                shape: const CircleBorder(),
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.airport_shuttle,
                  color: Colors.black,
                ),
                iconSize: 80.0,
                onPressed: () async {
                  setState(() {
                    c_with = 300;
                    c_time = 1;
                  });
                  c = await MockApi().getFerrariInteger();
                  setState(() {
                    c_text = c;
                    c_time = 0;
                    c_with = 0;
                  });
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: AnimatedContainer(
                  width: c_with,
                  height: 15,
                  decoration: BoxDecoration(color: Colors.orange.shade300),
                  duration: Duration(seconds: c_time)),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: Text(
                c.toString(),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Ink(
              decoration: ShapeDecoration(
                color: Colors.red.shade300,
                shape: const CircleBorder(),
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.directions_walk,
                  color: Colors.black,
                ),
                iconSize: 80.0,
                onPressed: () async {
                  setState(() {
                    w_with = 300;
                    w_time = 1;
                  });
                  w = await MockApi().getFerrariInteger();
                  setState(() {
                    w_text = w;
                    w_time = 0;
                    w_with = 0;
                  });
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: AnimatedContainer(
                  width: w_with,
                  height: 15,
                  decoration: BoxDecoration(color: Colors.red.shade300),
                  duration: Duration(seconds: w_time)),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Text(
                w.toString(),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
