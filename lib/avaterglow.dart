import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

class MyGlowAvater extends StatefulWidget {
  const MyGlowAvater({super.key});

  @override
  State<MyGlowAvater> createState() => _MyGlowAvaterState();
}

class _MyGlowAvaterState extends State<MyGlowAvater> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Material UI')
      ),

      body: AvatarGlow(child: Icon(Icons.menu), endRadius: 40, glowColor: Colors.grey,),

    
    );
  }
}