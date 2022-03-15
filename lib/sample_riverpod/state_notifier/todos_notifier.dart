import 'package:demo_rx_dart/sample_riverpod/model/todo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodosNotifier extends StateNotifier<List<Todo>>{
  TodosNotifier() : super([]);

  void addTodo(Todo toDo){
    state = [...state, toDo];
  }
}