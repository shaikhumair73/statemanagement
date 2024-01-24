import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/provider.dart';
import 'package:statemanagement/secondpage.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => CounterPrivider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(),
      body: Consumer(builder: (context, provider, child) {
        var listdata = Provider.of<CounterPrivider>(context).mData;
        return ListView.builder(
            itemCount: Provider.of<CounterPrivider>(context).mData.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("${listdata[index]["title"]}"),
                subtitle: Text("${listdata[index]["subtitle"]}"),
              );
            });
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SecondPage();
          }));
          //Provider.of<CounterPrivider>(context, listen: false).increament();
          // context.read<CounterPrivider>().increament();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
//Text(
//                 "${Provider.of<CounterPrivider>(context).getCountVal()}",
//                 style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//               );
