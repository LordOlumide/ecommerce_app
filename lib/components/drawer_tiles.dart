import 'package:flutter/material.dart';

Widget DrawerTile({icon, text, onTap}) {
  return InkWell(
    onTap: onTap,
    child: ListTile(
      leading: Icon(icon),
      title: Text(text),
    ),
  );
}