
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Welcome'),
            content: Text('You have been invided'),
            actions: [
              MaterialButton(onPressed: () {}, child: Text('Continue')),
              MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Close')),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Head Of State'),
        actions: [
          PopupMenuButton(
            onSelected: (value) => print('Selected ${value}'),
            itemBuilder: (context) => [
            PopupMenuItem(value: 'Option 1', child: Text('Option 1', )),
            PopupMenuItem(value: 'Option 2' , child: Text('Option 2')),
            PopupMenuItem(value: 'Option 3' , child: Text('Option 3'))
        ])
        ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 300,
                  width: 300,
        
                  // color: Colors.grey,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 12,
                          offset: Offset(4, 4),
                          color: Colors.grey),
                      BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 12,
                          offset: Offset(4, 4),
                          color: Colors.white),
                      BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 12,
                          offset: Offset(4, 4),
                          color: Colors.grey),
                      BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 12,
                          offset: Offset(4, 4),
                          color: Colors.white)
                    ],
                  ),
                ),
              ),
              Container(
                  child: MaterialButton(
                      color: Colors.blue,
                      onPressed: () {
                        _showDialog();
                      },
                      child: Text(
                        'Click Me',
                        style: TextStyle(color: Colors.white),
                      ))),
        
                    TextField(decoration: InputDecoration(hintText: 'Name', border:OutlineInputBorder(borderRadius:BorderRadius.circular(10)),))
        
                      
            ],
          ),
        ));
  }
}
