import 'package:flutter/material.dart';

class MyTable extends StatefulWidget {
  const MyTable({super.key});

  @override
  State<MyTable> createState() => _MyTableState();
}

class _MyTableState extends State<MyTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Table(
            border: TableBorder.all(),
            columnWidths: {
              0: FixedColumnWidth(100),
              1: FlexColumnWidth(1),
              2: FlexColumnWidth(1),
            },
        
            children: [
              TableRow(
                
                children: [
                  
                  TableCell(child: Center(child: Text('ID'),)),
                  TableCell(child: Center(child: Text('Name'))),
                  TableCell(child: Center(child: Text('Age'))),
                ]
        
              ),
              TableRow(
                children: [
                  TableCell(child: Center(child: Text('ID'),)),
                  TableCell(child: Center(child: Text('Name'))),
                  TableCell(child: Center(child: Text('Age'))),
                ]
        
              ),
              TableRow(
                children: [
                  TableCell(child: Center(child: Text('ID'),)),
                  TableCell(child: Center(child: Text('Name'))),
                  TableCell(child: Center(child: Text('Age'))),
                ]
        
              ),
              TableRow(
                children: [
                  TableCell(child: Center(child: Text('ID'),)),
                  TableCell(child: Center(child: Text('Name'))),
                  TableCell(child: Center(child: Text('Age'))),
                ]
        
              ),
            ],
          ),
        ),
      ),
      
    );
  }
}