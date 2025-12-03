import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  final bool initialValue;
  final ValueChanged<bool> onChanged;

  const CustomSwitch({
    Key? key,
    required this.initialValue,
    required this.onChanged,

  }) : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  late bool isSwitch;

  @override
  void initState() {
    super.initState();
    isSwitch = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scaleX: 1,
      scaleY: 1,
      child: Switch(
        activeColor: Color(0xff5CF198),
        inactiveThumbColor: Colors.white,
        activeThumbColor: Colors.white,
        inactiveTrackColor: Color(0xff777777),
        activeTrackColor: Color(0xff5CF198),
        value: isSwitch,
        onChanged: (bool newValue) {
          setState(() {
            isSwitch = newValue;
          });
          widget.onChanged(newValue);
        },
      ),
    );
  }
}
