import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/providers/provider.dart';
import 'package:todo_app/models/todo_model.dart';

class Comp extends ConsumerWidget {
  Comp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<ToDo> todoList = ref.watch(todosProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('ToDoリスト'),
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      ),
      body: Column(children: [
        Expanded(
          child: ReorderableListView(
            onReorder: (int oldIndex, int newIndex) {
              if (oldIndex < newIndex) {
                newIndex -= 1;
              }
            },
            header: TextButton.icon(
                onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) {
                      String description = '';
                      return AlertDialog(
                        title: const Text('タスクを追加'),
                        content: TextField(
                          onChanged: (value) {
                            description = value;
                          },
                        ),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              ref.read(todosProvider.notifier).addTodo(ToDo(
                                  DateTime.now().millisecondsSinceEpoch,
                                  description,
                                  false));
                              Navigator.pop(context, 'Ok');
                            },
                            child: const Text('Ok'),
                          ),
                        ],
                      );
                    }),
                icon: const Icon(Icons.add, color: Colors.black),
                label: const Text(
                  'タスクを追加',
                  style: TextStyle(color: Colors.black),
                )),
            footer: TextButton.icon(
              onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) {
                    String description = '';
                    return AlertDialog(
                      title: const Text('タスクを追加',
                          style: TextStyle(color: Colors.black)),
                      content: TextField(
                        onChanged: (value) {
                          description = value;
                        },
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () {
                            ref.read(todosProvider.notifier).addTodo(ToDo(
                                DateTime.now().millisecondsSinceEpoch,
                                description,
                                false));
                            Navigator.pop(context, 'Ok');
                          },
                          child: const Text('Ok'),
                        ),
                      ],
                    );
                  }),
              icon: const Icon(
                Icons.add,
                color: Colors.black,
              ),
              label: const Text(
                'タスクを追加',
                style: TextStyle(color: Colors.black),
              ),
            ),
            children: todoList
                .map((todo) => Column(key: Key('${todo.id}'), children: [
                      const SizedBox(
                        width: 30,
                        height: 30,
                      ),
                      InkWell(
                          onTap: () {
                            showDialog<String>(
                                context: context,
                                builder: (BuildContext context) {
                                  String description = '';
                                  return AlertDialog(
                                    title: const Text('タスクを編集',
                                        style: TextStyle(color: Colors.black)),
                                    content: TextField(
                                      onChanged: (value) {
                                        description = value;
                                      },
                                    ),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'Cancel'),
                                        child: const Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          ref
                                              .read(todosProvider.notifier)
                                              .update(description, todo.id);
                                          Navigator.pop(context, 'Ok');
                                        },
                                        child: const Text('Ok'),
                                      ),
                                    ],
                                  );
                                });
                          },
                          child: ListTile(
                            title: Text(
                              todo.description,
                              style: const TextStyle(color: Colors.black),
                            ),
                            trailing: IconButton(
                              icon: const Icon(
                                Icons.close,
                                color: Colors.red,
                              ),
                              onPressed: () {
                                ref
                                    .read(todosProvider.notifier)
                                    .removeTodo(todo.id);
                              },
                            ),
                          ))
                    ]))
                .toList(),
          ),
        ),
      ]),
    );
  }
}
