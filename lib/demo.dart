
import 'dart:developer' as developer;
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Demo extends StatefulWidget {
  static const routeName = 'Demo';
  final FirebaseRemoteConfig remoteConfig;

  Demo(this.remoteConfig);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  static const TAG = 'Demo';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome ${widget.remoteConfig.getString('welcome')}'),
              const SizedBox(
                height: 20,
              ),
              Text('(${widget.remoteConfig.getString('demo')})'),
              Text('(${widget.remoteConfig.lastFetchTime})'),
              Text('(${widget.remoteConfig.lastFetchStatus})'),
            ],
          ),
        ),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            try {
              // Using zero duration to force fetching from remote server.
              await widget.remoteConfig.setConfigSettings(RemoteConfigSettings(
                fetchTimeout: const Duration(seconds: 10),
                minimumFetchInterval: Duration.zero,
              ));
              await widget.remoteConfig.fetchAndActivate();
            } on PlatformException catch (exception) {
              print(exception);
            } catch (exception) {
              print('Unable to fetch remote config. Cached or default values will be '
                      'used');
              print(exception);
            }
          },
          child: const Icon(Icons.refresh),
        )
    );
  }
}