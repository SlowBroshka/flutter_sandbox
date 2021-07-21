import 'package:flutter/material.dart';

class RestPageWidget extends StatefulWidget {
  final Color color;

  RestPageWidget(this.color);

  @override
  _RestPageWidgetState createState() => _RestPageWidgetState();
}

class _RestPageWidgetState extends State<RestPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.color,
    );
  }
}
