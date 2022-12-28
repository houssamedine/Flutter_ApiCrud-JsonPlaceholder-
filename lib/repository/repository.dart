import 'package:flutter_api_todos_crud/modules/todo.dart';

abstract class Repository {
  //Liste de tous les Todos
  Future<List<Todo>> getAllTodos();

  //Ajouter Objet dans la liste des todos
  Future<List<Todo>> addTodo(Todo todo);

  //Update Tous l'Objet dans la liste des todos
  Future<List<Todo>> pushCompleteTodo(Todo todo);

  //Update un elemet d'Objet depuis la liste des todos
  Future<List<Todo>> putTodo(Todo todo);

  //Delete Objet depuis la liste des todos
  Future<List<Todo>> deleteTodo(Todo todo);
}
