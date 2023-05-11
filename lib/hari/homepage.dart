import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text("ToDo List"),
        actions: [
          Icon(Icons.search),
          PopupMenuButton(itemBuilder: (context) => [

            PopupMenuItem(child: ListTile(
              leading: Icon(Icons.add),
              title: Text("New note"),
            )),
            PopupMenuItem(child: ListTile(
              leading: Icon(Icons.edit),
              title: Text("Edit"),
            )),
            PopupMenuItem(child: ListTile(
              leading: Icon(Icons.calendar_month),
              title: Text("Calender"),
            )),
            PopupMenuItem(child: ListTile(
              leading: Icon(Icons.delete),
              title: Text("Trash"),
            )),
            PopupMenuItem(child: ListTile(
              leading: Icon(Icons.settings),
              title: Text("settings"),
              )),
              PopupMenuItem(child: ListTile(
                leading: Icon(Icons.logout),
                title: Text("Log out"),
              )),
          ],)

        ],
      ),


    );
  }
}
