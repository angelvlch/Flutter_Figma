import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Switch(
      inactiveThumbColor: Colors.white,
      inactiveTrackColor: const Color.fromRGBO(227, 229, 232, 1),
      value: isSwitched,
      onChanged: (value) => setState(() {
        isSwitched = value;
      }),
    );
  }
}
