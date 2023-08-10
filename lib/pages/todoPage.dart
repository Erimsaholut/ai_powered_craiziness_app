import 'package:flutter/material.dart';
import 'package:craziness_app/tools/constants.dart';
class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final List<TodoItem> _todoList = [
    TodoItem(text: 'Yemek yap'),
    TodoItem(text: 'Kitap oku'),
    TodoItem(text: 'Spor yap'),
  ];

  void _toggleTodoItem(TodoItem item) {
    setState(() {
      item.isDone = !item.isDone;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Do List'),
        backgroundColor: MyColors.titleBackgroundColor,
      ),
      body: Container(
        color: MyColors.backgroundColor,
        child: ListView.builder(
          itemCount: _todoList.length,
          itemBuilder: (context, index) {
            final todoItem = _todoList[index];
            return ListTile(
              leading: Checkbox(
                value: todoItem.isDone,
                onChanged: (value) => _toggleTodoItem(todoItem),
              ),
              title: Text(
                todoItem.text,
                style: TextStyle(
                  decoration: todoItem.isDone ? TextDecoration.lineThrough : null,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class TodoItem {
  final String text;
  bool isDone;

  TodoItem({required this.text, this.isDone = false});
}
