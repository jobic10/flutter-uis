import 'package:flutter/material.dart';
import 'package:flutter_uis/projects/dating/screens/recommendation.dart';
import 'package:flutter_uis/projects/stag/screens/stag.dart';

import 'projects/dating/screens/screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UIs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Flutter UIs'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Dating UI'),
            leading: Icon(Icons.favorite),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => RecommendationScreen()));
            },
          ),
          ListTile(
            title: Text('Delete'),
            leading: Icon(Icons.favorite),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ScreenApp()));
            },
          ),
          ListTile(
            title: Text('Staggered'),
            leading: Icon(Icons.favorite),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => StagApp()));
            },
          ),
        ],
      ),
    );
  }
}
