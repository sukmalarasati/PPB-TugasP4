import 'package:flutter/material.dart';

Drawer MainDrawer({List<Widget> children = const <Widget>[]}) {
  return Drawer(
    child: SafeArea(
      child: Column(children: children),
    ),
  );
}
