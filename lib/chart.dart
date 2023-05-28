import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Chart extends StatefulWidget {
  const Chart({super.key});

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Chart Page"),
      ),
    );
  }
}
