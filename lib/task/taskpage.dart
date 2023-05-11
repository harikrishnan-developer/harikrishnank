import 'package:flutter/material.dart';
class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(7, 94, 84, 0.7),
        title: Text("WhatsApp"),


        actions: [
          Icon(Icons.photo_camera),
          Padding(
              padding:const EdgeInsets.all(8),
          ),
          Icon(Icons.search),
          PopupMenuButton(itemBuilder: (context) => [

            PopupMenuItem(child: ListTile(
              title: Text("New group"),
            )),
            PopupMenuItem(child: ListTile(
              title: Text("New broadcast"),
            )),
            PopupMenuItem(child: ListTile(
              title: Text("Linked devices"),
            )),
            PopupMenuItem(child: ListTile(
              title: Text("Starred messages"),
            )),
            PopupMenuItem(child: ListTile(
              title: Text("Payments"),
            )),
            PopupMenuItem(child: ListTile(
              title: Text("Settings"),
            )),

          ],)
        ],
      ),
    );
  }
}
