import 'package:flutter/material.dart';
import 'package:todo_app_flutter/constants/colors.dart';
import '../widget/todo_widget.dart';
import '../model/todo.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final todoList = ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBgColor,
      appBar: AppBar(
        backgroundColor: tdBgColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircleAvatar(
              child: ClipOval(
                child: Image.asset('assets/images/logo.png'),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 50),
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          searchBox(),
          Expanded(
              child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 40, bottom: 20, left: 20),
                child: const Text(
                  'All ToDos',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
              for (ToDo todo in todoList) TodoWidget(todo: todo)
            ],
          ))
        ],
      ),
    );
  }
}

Widget searchBox() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    height: 45,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), color: Colors.white),
    child: const TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(8),
        border: InputBorder.none,
        hintText: 'Search...',
        prefixIcon: Icon(Icons.search),
      ),
    ),
  );
}
