class ToDo {
  String? id;
  String todoText;
  bool? isDone;

  ToDo({required this.id, required this.todoText, this.isDone});

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'this is Example 1', isDone: true),
      ToDo(id: '02', todoText: 'this is Example 2', isDone: true),
      ToDo(id: '03', todoText: 'this is Example 3'),
      ToDo(id: '04', todoText: 'this is Example 4'),
      ToDo(id: '05', todoText: 'this is Example 5'),
    ];
  }
}
