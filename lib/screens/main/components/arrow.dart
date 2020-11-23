import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:chords_jam/logic/jam.dart';

class Arrow extends StatefulWidget {
  final IconData icon;
  final Function transpose;
  Arrow({this.icon, this.transpose});

  @override
  _ArrowState createState() => _ArrowState();
}

class _ArrowState extends State<Arrow> {
  Color iconColor = Colors.white.withOpacity(0.3);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.transpose,
      onTapDown: (_) {
        setState(() {
          iconColor = Colors.white;
        });
      },
      onTapUp: (_) {
        setState(() {
          iconColor = Colors.white.withOpacity(0.3);
        });
      },
      onTapCancel: () {
        setState(() {
          iconColor = Colors.white.withOpacity(0.3);
        });
      },
      child: Icon(
        widget.icon,
        color: iconColor,
        size: 30,
      ),
    );
  }
}
