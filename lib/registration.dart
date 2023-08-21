import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formkey = GlobalKey<FormState>();
  String _name = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Material App'),
     
      ),
      drawer: Drawer(
        child: ListView(children: const [
          DrawerHeader(child: Icon(Icons.lock_open , size: 50, )),
        
          ListTile(
            mouseCursor: MaterialStateMouseCursor.clickable,
            title: Text('Home'),
          ),
          ListTile(
            title: Text('About') ,
          ),
        
          ListTile(
            title: Text('Contect'),
          )
        
        ]),        
      ),

      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            
            
            children: [
              TextFormField(
                
                decoration: InputDecoration(labelText: 'Name',  ),
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Insert Input Field';
                  }
                  return null;
                },
                onChanged: (value) {
                  _name = value;
                },
              ),
              SizedBox(height: 20,),
              TextFormField(
                obscureText: true,
                autocorrect: true,
                decoration: InputDecoration(labelText: 'password'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Validation Error';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _password = value;
                  });
                },
              )
            ],
          ),
        ),
      )),
    );
  }
}
