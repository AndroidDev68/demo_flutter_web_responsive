
import 'package:demo_rx_dart/sample_riverpod/model/todo.dart';
import 'package:demo_rx_dart/sample_riverpod/state/demo_state.dart';
import 'package:demo_rx_dart/sample_riverpod/state_notifier/demo_state_notifier.dart';
import 'package:demo_rx_dart/sample_riverpod/state_notifier/todos_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final todosStateNotifierProvider = StateNotifierProvider<TodosNotifier, List<Todo>>((ref){
    return TodosNotifier();
  }
);

final counterProvider = Provider<int>((ref)=>0);

final counterStateProvider = StateProvider<int>((ref)=>0);

final demoStateProvide = StateNotifierProvider<DemoStateNotifier, DemoState>((ref){
    return DemoStateNotifier();
  }
);

final demoFutureProvider = FutureProvider<List<Todo>>((ref) async {
  await Future.delayed(const Duration(seconds: 5));
  List<Todo> todoList = [
    Todo(description: "description", isComplete: false),
    Todo(description: "description1", isComplete: false),
  ];
  return todoList;

});