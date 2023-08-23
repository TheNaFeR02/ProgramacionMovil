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
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Sudoku(title: 'Sudoku for kids'),
    );
  }
}

class Sudoku extends StatelessWidget {
  final String title;

  const Sudoku({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sudoku for kids'),
        ),
        body: const Center(
          child: Board(size: 3),
        ));
  }
}

class Board extends StatelessWidget {
  final int size;

  const Board({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return 
      Container(
        decoration: BoxDecoration(
            border: Border.all(
          color: Theme.of(context).colorScheme.inversePrimary,
        )),
        width: 458,
        height: 458,
        // child: Region(size: 2),
        child: Column(
          children: [
            for (int i = 0; i < size; i++)
              Row(
                children: [for (int i = 0; i < size; i++) Region(size: 3)],
              ),
          ],
        ),
      );
  }
}

class Region extends StatelessWidget {
  final List<List<Box>> rows;
  final int size;

  // initialize the rows
  Region({
    super.key,
    required this.size,
  }) : rows = List.generate(
            size,
            (i) => List.generate(
                size,
                (j) => Box(
                      content: '$i,$j',
                    )));

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
            border: Border.all(
          color: Theme.of(context).colorScheme.inversePrimary,
        )),
      child: Column(
        children: rows.map((row) => Row(children: row)).toList(),
      ),
    );
  }
}

class Box extends StatelessWidget {
  final String content;

  const Box({
    super.key,
    this.content = '',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
        color: Theme.of(context).colorScheme.inversePrimary,
      )),
      width: 48.0,
      height: 48.0,
      margin: const EdgeInsets.all(1.0),
      child: Center(child: Text(content)),
    );
  }
}
