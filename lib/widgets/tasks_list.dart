import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/tasks.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    super.key,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: Provider.of<Tasks>(context).tasks[index].name,
            isChecked: Provider.of<Tasks>(context).tasks[index].isDone,
            checkboxCallback: (bool? checkboxState) {
              setState(() {
                Provider.of<Tasks>(context, listen: false)
                    .tasks[index]
                    .toggleDone();
              });
            });
      },
      itemCount: Provider.of<Tasks>(context).taskCount,
    );
  }
}
