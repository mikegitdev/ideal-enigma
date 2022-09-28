import 'package:lms/data/entity/todos_entity.dart';

abstract class TodosDatabase {
  Future<TodoListEntity> allTodos();
  Future<TodoEntity> insertTodo(final TodoEntity todoEntity);
  Future<void> updateTodo(final TodoEntity todoEntity);
  Future<void> deleteTodo(final int id);
}
