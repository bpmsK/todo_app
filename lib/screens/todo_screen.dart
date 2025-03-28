import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/models/todo_model.dart';
import 'package:todo_app/providers/provider.dart';
import 'package:todo_app/screens/finished_screen.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<ToDo> todoList = ref.watch(todosProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('ToDoリスト'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) {
              return Comp();
            })),
          )
        ],
      ),
      body: Column(children: [
        Expanded(
          child: ReorderableListView(
            children: todoList
                .map((todo) => Column(key: Key('${todo.id}'), children: [
                      const SizedBox(
                        width: 30,
                        height: 30,
                      ),
                      InkWell(
                          onTap: () {
                            ref.read(todosProvider.notifier).toggle(todo.id);
                          },
                          child: todo.isCompleted
                              ? ListTile(
                                  title: Text(todo.description,
                                      style: TextStyle(
                                          color: Colors.grey,
                                          decoration:
                                              TextDecoration.lineThrough)),
                                  trailing: Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  ),
                                )
                              : ListTile(
                                  title: Text(todo.description),
                                ))
                    ]))
                .toList(),
            onReorder: (int oldIndex, int newIndex) {
              ref.read(todosProvider.notifier).onReorder(oldIndex, newIndex);
            },
          ),
        ),
      ]),
    );
  }
}
