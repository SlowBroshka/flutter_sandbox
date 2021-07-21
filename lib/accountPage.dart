import 'package:flutter/material.dart';

class AccountPageWidget extends StatefulWidget {
  final Color color;

  AccountPageWidget(this.color);

  @override
  _AccountPageWidgetState createState() => _AccountPageWidgetState();
}

class _AccountPageWidgetState extends State<AccountPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.color,
    );
  }
}
