import 'package:flutter/material.dart';
import 'package:spicy_app/flavour_config.dart';

late FlavorConfig flavorConfig;
void mainCommon(FlavorConfig config) {
  flavorConfig = config;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      title: flavorConfig.appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(flavorConfig.buildType),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text(
              'Welcome to ${flavorConfig.appTitle}!',
            ),
            const SizedBox(height: 16),
            Image.asset(flavorConfig.imageLocation),
          ],
        ),
      ),
    );
  }
}
