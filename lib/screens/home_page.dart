import 'package:flutter/material.dart';
import 'package:flutter_api_todos_crud/controllers/todo_controller.dart';
import 'package:flutter_api_todos_crud/modules/todo.dart';
import 'package:flutter_api_todos_crud/repository/todo_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Injection de Dependence
    var todoController = TodoController(TodoRepository());

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Todo List',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: FutureBuilder<List<Todo>>(
          future: todoController.fetchTodoList(),
          builder: (context, snapshot) {
            //Test Connexion:
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.hasError) {
              return Center(
                child: Text(
                  "Erreur de chargement",
                  style: TextStyle(color: Colors.red),
                ),
              );
            }
            return ListView.separated(
                itemBuilder: (context, index) {
                  var todo = snapshot.data?[index];
                  return Container(
                    height: 100,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text('${todo?.id}'),
                        ),
                        Expanded(
                          flex: 3,
                          child: Text('${todo?.title}'),
                        ),
                        Expanded(
                          flex: 3,
                          child: Text("1"),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    thickness: 0.5,
                    height: 0.5,
                  );
                },
                itemCount: snapshot.data?.length ?? 0);
          }),
    );
  }
}
