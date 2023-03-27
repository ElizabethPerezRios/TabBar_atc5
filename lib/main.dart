import 'package:flutter/material.dart';
//import 'item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pestaña TabBar',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
} //myhomepage

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Colors.white),
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.store)),
              Tab(icon: Icon(Icons.access_time)),
            ],
          ),
          centerTitle: true,
          title: Text('Panaderia'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.home, size: 350),
            Icon(Icons.directions_transit, size: 350),
            Icon(Icons.store, size: 350),
            Icon(Icons.access_time, size: 350),
          ],
        ),
      ),
    );
  }
}
