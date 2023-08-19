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
      title: 'Sudoku',
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
      home: Scaffold(
        appBar: AppBar(title: Text('Test')),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Column(children: [
              MyRow(),
              MyRow(), // Row
              MyRow(),
              MyRow(),
               OptionsRow(option1:"", option2:"",option3:"", option4:""),
                OptionsRow(option1:"", option2:"",option3:"", option4:""),
              OptionsRow(option1:"Option 1", option2:"Option 2",option3:"Option 3", option4:"Option 4"),

            ], mainAxisAlignment: MainAxisAlignment.center), // Column
          ),
        ), //Center
      ), //Scaffold
    ); // MaterialApp
  }
}

class OptionsRow extends StatelessWidget {
  const OptionsRow({
    super.key,
    required this.option1,
    required this.option2,
    required this.option3,
    required this.option4,
  });

  final String option1;
  final String option2;
  final String option3;
  final String option4;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [Expanded(child: Center(child: Text(this.option1))),Expanded(child: Center(child: Text(this.option2))),Expanded(child: Center(child: Text(this.option3))),Expanded(child: Center(child: Text(this.option4)))],
    ));
  }
}

class MyRow extends StatelessWidget {
  const MyRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: DecoratedBox(
                    child: Center(
                        child: Container(
              child: Text("2"),
              width: 100,
              height: 100,
            )))),
            Expanded(
                child: DecoratedBox(
                    child: Center(
                        child: Container(
              child: Text("2"),
              width: 100,
              height: 100,
            )))),
            Expanded(
                child: DecoratedBox(
                    child: Center(
                        child: Container(
              child: Text("2"),
              width: 100,
              height: 100,
            )))),
            Expanded(
                child: DecoratedBox(
                    child: Center(
                        child: Container(
              child: Text("2"),
              width: 100,
              height: 100,
            )))),
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        ));
  }
}

class DecoratedBox extends StatelessWidget {
  // i need that the child that i pass to this widget will be decorated with a border

  const DecoratedBox({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: this.child),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
      ),
    );
  }
}

// class MyRow extends StatelessWidget {
//   const MyRow({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           Expanded(
//               child: Center(
//                   child: Container(color: Colors.red, child: Text("1")))),
//           Expanded(child: Center(child: Text("2"))),
//           Expanded(child: Center(child: Text("1"))),
//           Expanded(child: Center(child: Text("2"))),
//         ],
//       ),
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: Theme.of(context).colorScheme.inversePrimary,
//         ),
//       )
//     );
//   }
// }

// class MyHome extends StatelessWidget {
//   const MyHome({super.key});
  
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: Theme.of(context).colorScheme.inversePrimary,
//         ),
//       ),
//       child: const Row(
//         children: <Widget>[
//           Expanded(
//             child: Text('Deliver features faster', textAlign: TextAlign.center),
//           ),
//           Expanded(
//             child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
//           ),
//           Expanded(
//             child: FittedBox(
//               child: FlutterLogo(),
//             ),
//           ),
//           Expanded(
//             child: FittedBox(
//               child: FlutterLogo(),
//             ),
//           ),
//           Expanded(
//             child: FittedBox(
//               child: FlutterLogo(),
//             ),
//           ),
          
//         ],
//       )
//     );
      
//   }

// }

// class MyHome extends StatelessWidget {
//   const MyHome({super.key});
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sudoku for kids'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Sudoku for kids',
//             ),
//           ],
//         ),
//       ),
//     );
//   }

// }


// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
