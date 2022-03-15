import 'package:demo_rx_dart/sample_riverpod/state/demo_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DemoStateNotifier extends StateNotifier<DemoState>{
  DemoStateNotifier() : super(const DemoState.loading());

  void changeToStateData(){
    state = const DemoStateData();
  }
  void changeToStateLoading(){
    state = const DemoState.loading();
  }
  void changeToStateError(){
    state = const DemoState.error("error");
  }
}