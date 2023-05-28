import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:money_matters/homepage.dart';

class pageSwitch extends StatefulWidget {
  const pageSwitch({super.key});

  @override
  State<pageSwitch> createState() => _pageSwitchState();
}

class _pageSwitchState extends State<pageSwitch> {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
