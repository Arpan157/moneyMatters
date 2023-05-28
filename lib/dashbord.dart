import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class dashbord extends StatefulWidget {
  const dashbord({super.key});

  @override
  State<dashbord> createState() => _dashbordState();
}

class _dashbordState extends State<dashbord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Dashbord Page"),
      ),
    );
  }
}
