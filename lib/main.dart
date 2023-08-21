import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:head_of_state/avaterglow.dart';
import 'package:head_of_state/cartroll.dart';
import 'package:head_of_state/frontpage.dart';
import 'package:head_of_state/homepage.dart';
import 'package:head_of_state/loginpage.dart';
import 'package:head_of_state/logmein.dart';
import 'package:head_of_state/registration.dart';
import 'package:head_of_state/tab.dart';
import 'package:head_of_state/tables.dart';
import 'package:avatar_glow/avatar_glow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Landing()
    
      );
  }
}

