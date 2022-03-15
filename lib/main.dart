import 'dart:math';

import 'package:demo_rx_dart/demo.dart';
import 'package:demo_rx_dart/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rxdart/rxdart.dart';
import 'package:demo_rx_dart/context_extension.dart';
import 'dart:developer' as developer;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
  int _counter = 0;

  final PublishSubject<int> _publishSubject = PublishSubject();
  final BehaviorSubject<int> _behaviorSubject = BehaviorSubject();
  final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
  String author = "";
  String channel = "";


  Future<void> _incrementCounter() async {
    // int x = Random().nextInt(1000);
    // _publishSubject.add(1);
    // _publishSubject.add(2);
    // _publishSubject.add(3);
    // _behaviorSubject.add(1);
    // _behaviorSubject.add(2);
    // _behaviorSubject.add(3);

    final remoteConfig = RemoteConfig.instance;
    final defaultValue=<String,dynamic>{
      'author':'developer',
      "channel":"developer"
    };
    try {
      await remoteConfig.setConfigSettings(RemoteConfigSettings(
        fetchTimeout: const Duration(hours: 4), //cache refresh time
        minimumFetchInterval: Duration.zero,
      ));
      await remoteConfig.fetchAndActivate();

    } on PlatformException catch (exception) {
      print(exception);
    } catch (exception) {
      print('Unable to fetch remote config. Cached or default values will be '
          'used');
      print("exception===>$exception");
    }
    setState(() {

      author = remoteConfig.getString("demo");
      channel = remoteConfig.getString("channel");
      developer.log("value: author: $author", name:'tz');
    });

  }

  void _showLoading(){
    context.showLoading();
    Future.delayed(const Duration(seconds: 5), (){
      context.hideLoading();
    });
  }
  void _hideLoading(){
    context.hideLoading();
  }

  @override
  void initState() {
    super.initState();

    _publishSubject.listen((value) {
      developer.log("_publishSubject.listen value: $value", name:'tz');
    });

    _behaviorSubject.listen((value) {
      developer.log("_behaviorSubject.listen value: $value", name:'tz');
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: const Center(
        child: Text("hihihi"),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _showLoading,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),

        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


}
