import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todoey/screens/tasks_screen.dart';
import 'package:todoey/models/tasks.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Tasks(),
      child: const MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}

// final List<Task> tasks = [
//   Task(name: 'Buy milk'),
//   Task(name: 'Buy eggs'),
//   Task(name: 'Buy bread'),
// ];
