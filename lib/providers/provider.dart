import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/models/todo_model.dart';

const List<ToDo> todos = [];

class TodosNotifier extends StateNotifier<List<ToDo>> {
  TodosNotifier() : super(todos);

  void addTodo(ToDo newTodo) {
    List<ToDo> newState = [];
    for (final todo in state) {
      newState.add(todo);
    }
    newState.add(newTodo);
    state = newState;
  }

  void toggle(int id) {
    List<ToDo> newState = [];
    for (final todo in state) {
      if (todo.id == id) {
        newState.add(todo.copyWith(isCompleted: !todo.isCompleted));
      } else {
        newState.add(todo);
      }
    }
    state = newState;
  }

  void update(String description, int id) {
    List<ToDo> newState = [];
    for (final todo in state) {
      if (todo.id == id) {
        newState.add(todo.copyWith(description: description));
      } else {
        newState.add(todo);
      }
    }
    state = newState;
  }

  void onReorder(oldIndex, newIndex) {
    List<ToDo> newState = [];
    for (final todo in state) {
      newState.add(todo);
    }
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    final todo = newState.removeAt(oldIndex);
    newState.insert(newIndex, todo);

    state = newState;
  }

  void removeTodo(int id) {
    List<ToDo> newState = [];
    for (final todo in state) {
      if (id != todo.id) {
        newState.add(todo);
      }
    }
    state = newState;
  }
}

final todosProvider = StateNotifierProvider<TodosNotifier, List<ToDo>>((ref) {
  return TodosNotifier();
});

final completeTodosProvider = Provider<List<ToDo>>((ref) {
  final todos = ref.watch(todosProvider);

  return todos.where((todo) => todo.isCompleted).toList();
});

final unfinishedTodosProvider = Provider<List<ToDo>>((ref) {
  final todos = ref.watch(todosProvider);

  return todos.where((todo) => !todo.isCompleted).toList();
});
