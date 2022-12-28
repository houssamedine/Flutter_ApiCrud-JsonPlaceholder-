import 'package:flutter_api_todos_crud/modules/todo.dart';
import 'package:flutter_api_todos_crud/repository/repository.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TodoRepository implements Repository {
  //use Http Protocol
  String dataUrl = "https://jsonplaceholder.typicode.com";

  @override
  Future<List<Todo>> getAllTodos() async {
    List<Todo> todoList = [];

    //Url De l'API ==> https://jsonplaceholder.typicode.com/todos
    var url = Uri.parse('$dataUrl/todos');
    var response = await http.get(url);
    print("Status code: ${response.statusCode}");

    //convert Data
    var body = json.decode(response.body);

    //Boucle pour afficher le data
    for (var i = 0; i < body.length; i++) {
      todoList.add(Todo.fromJson(body[i]));
    }
    return todoList;
  }

  @override
  Future<List<Todo>> addTodo(Todo todo) async {
    // TODO: implement addTodo
    throw UnimplementedError();
  }

  @override
  Future<List<Todo>> deleteTodo(Todo todo) {
    // TODO: implement deleteTodo
    throw UnimplementedError();
  }

  @override
  Future<List<Todo>> pushCompleteTodo(Todo todo) {
    // TODO: implement pushCompleteTodo
    throw UnimplementedError();
  }

  @override
  Future<List<Todo>> putTodo(Todo todo) {
    // TODO: implement putTodo
    throw UnimplementedError();
  }
}
