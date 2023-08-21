import 'package:flutter/material.dart';

class LogMeIn extends StatefulWidget {
  const LogMeIn({super.key});

  @override
  State<LogMeIn> createState() => _LogMeInState();
}

class _LogMeInState extends State<LogMeIn> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';

  void _onSubmitForm() {
    if (_formKey.currentState!.validate()) {
      print('Success Loggin In . Email : $_email . Password: $_password  ');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: 'Email'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter Input Field';
                }
                return null;
              },
              onChanged: (value) {
                setState(() {
                  _email = value;
                });
              },
            ),
            SizedBox(
              height: 16,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'password'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Value Cannot be empty';
                }
                return null;
              },
              onChanged: (value) {
                setState(() {
                  _password = value;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: _onSubmitForm,
                child: Text('Login'))
          ],
        ),
      ),
    );
  }
}
