import 'package:flutter/material.dart';

class SideIcon extends StatefulWidget {
  final IconData icon;
  bool isActive;

  SideIcon(this.icon, this.isActive);

  @override
  _SideIconState createState() => _SideIconState();
}

class _SideIconState extends State<SideIcon> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.isActive = !widget.isActive;
        });
        //TODO Icon function
      },
      child: Icon(
        widget.icon,
        size: 30,
        color: widget.isActive ? Colors.white : Colors.white.withOpacity(0.3),
      ),
    );
  }
}
