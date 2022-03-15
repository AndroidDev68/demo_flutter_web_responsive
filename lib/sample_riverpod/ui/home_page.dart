import 'package:demo_rx_dart/sample_riverpod/initialize_dependencies.dart';
import 'package:demo_rx_dart/sample_riverpod/model/todo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '';
import 'dart:developer' as developer;

class HomePage extends ConsumerWidget{
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final completedTodos = ref.watch(todosStateNotifierProvider);
    final count = ref.watch(counterStateProvider);
    final demoState = ref.watch(demoStateProvide);
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Text(count.toString(), style: Theme.of(context).textTheme.subtitle2,),

            ElevatedButton(onPressed: (){
              ref.read(counterStateProvider.state).state++;
            }, child: const Text("add")),
            ElevatedButton(onPressed: (){
              ref.read(counterStateProvider.state).state--;
            }, child: const Text("minus")),
            Column(
                children: completedTodos.map((e) => Text(e.description)).toList(),
            ),
            ElevatedButton(onPressed: (){
              ref.read(todosStateNotifierProvider.notifier).addTodo(Todo(description: "description", isComplete: false));
            }, child: const Text("Add todo")),

            demoState.when(() {
              return const Text("StateDataa");
            }, loading: ()=> const Text("Loading"), error: (err) => const Text("Error")),

            ElevatedButton(onPressed: (){
              ref.read(demoStateProvide.notifier).changeToStateData();
            }, child: const Text("Change state to data")),
            ElevatedButton(onPressed: (){
              ref.read(demoStateProvide.notifier).changeToStateLoading();
            }, child: const Text("Change state to loading")),
            ElevatedButton(onPressed: (){
              ref.read(demoStateProvide.notifier).changeToStateError();
            }, child: const Text("Change state to error")),
          ],
        ),
      ),
    );
  }

  void showModalBottom(context){
    showModalBottomSheet<void>(
      isScrollControlled: true,
      context: context,
      shape:const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0)),
      ),
      builder: (BuildContext context) {
        return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child:  Wrap(
              children: const <Widget>[
                TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter a search term'),
                ),
                TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter a search term'),
                ),
                TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter a search term'),
                ),
                TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter a search term'),
                )
              ],
            ));
      },
    );
  }

}