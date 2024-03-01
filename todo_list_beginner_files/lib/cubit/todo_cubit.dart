import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/models/todo_model.dart';

class TodoCubit extends Cubit<List<TodoModels>> {
  TodoCubit() : super([]);

  void addTodo(String title) {
    if (title.isEmpty) {
      return;
    }
    final todo = TodoModels(name: title, createdAt: DateTime.now());

    emit([...state, todo]);
  }
}
