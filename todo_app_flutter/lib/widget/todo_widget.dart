import 'package:flutter/material.dart';
import 'package:todo_app_flutter/constants/colors.dart';
import '../model/todo.dart';

class TodoWidget extends StatelessWidget {
  final ToDo todo;
  const TodoWidget({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.white,
        leading: const Icon(Icons.check_box, color: tdBlue),
        title: Text(
          todo.todoText,
          style: TextStyle(
              fontSize: 16,
              color: tdBlack,
              decoration: TextDecoration.lineThrough),
        ),
        trailing: IconButton(
          icon: const Icon(
            Icons.delete_outline,
            color: tdRed,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
