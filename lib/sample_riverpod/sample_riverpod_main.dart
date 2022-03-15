import 'package:flutter/cupertino.dart';
import 'application.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main(){
  runApp(const ProviderScope(child: Application()));
}
