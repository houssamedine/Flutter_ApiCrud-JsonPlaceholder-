import 'package:flutter_api_todos_crud/modules/todo.dart';
import 'package:flutter_api_todos_crud/repository/repository.dart';

class TodoController {
  final Repository _repository;

  TodoController(this._repository);

  //Web Service Get All
  Future<List<Todo>> fetchTodoList() async {
    return _repository.getAllTodos();
  }
}
