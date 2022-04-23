import 'package:flutter/material.dart';

class SingupPage extends StatefulWidget {
  const SingupPage({ Key? key }) : super(key: key);

  @override
  State<SingupPage> createState() => _SingupPageState();
}

class _SingupPageState extends State<SingupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Signup Page")),
    );
  }
}