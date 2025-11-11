import 'package:flutter/material.dart';
class MyTodolist extends StatefulWidget {
  const MyTodolist({super.key});

  @override
  State<MyTodolist> createState() => _MyTodolistState();
}

class _MyTodolistState extends State<MyTodolist> {
  TextEditingController tasksController = TextEditingController();

  List<String> tasks = [];

  addTask() {
    setState(() {
      final task = tasksController.text;
      if (task.isNotEmpty) {
        tasks.add(tasksController.text);
        tasksController.clear();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('✅ Task Added')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('⚠️ Field cannot be empty')),
        );
      }
    });
  }

  deleteTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  updateTask(String value, int index){

    if (value.isNotEmpty) {
     setState(() {
       tasks[index]=value;
     });
    } else {}
  }

  editTask(int index){
      final controller = TextEditingController(text: tasks[index]);
      
      showDialog(context: context, builder: (context)=>AlertDialog(
        title: Text('Edit Task'),
        content: TextField(
          controller: controller,
        ),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Cancel')),
          ElevatedButton(onPressed: (){
            updateTask(controller.text, index);
            Navigator.pop(context);
          }, child: Text('Update'))
        ],
      ));
  }


  @override
  Widget build(BuildContext context) {
       //final Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Todo List',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SingleChildScrollView(
              //scrollDirection: orientation == Orientation.landscape ? Axis.horizontal : Axis.vertical,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: tasksController,
                      decoration: InputDecoration(labelText: 'Enter Task'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple
                      ),
                      onPressed: addTask,
                      child: Text('Add', style: TextStyle(
                        fontWeight: FontWeight.bold
                      )),
              
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                color: Colors.green[100],

                child: ListView.builder(
                  itemCount: tasks.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        title: Text(tasks[index],
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(onPressed: () {
                              editTask(index);
                            }, icon: Icon(Icons.edit, color: Colors.lightBlue, fontWeight: FontWeight.bold,)),
                            IconButton(
                              onPressed: () {
                                deleteTask(index);
                              },
                              icon: Icon(Icons.delete,color: Colors.red,fontWeight: FontWeight.bold ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
