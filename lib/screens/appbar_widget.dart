import 'package:flutter/material.dart';

AppBar buildAppBar(String title) {
  return AppBar(
    backgroundColor: Color(0xFFFAFAFA),
    leading: BackButton(color: Colors.black),
    elevation: 0,
    centerTitle: true,
    title: Text(
      title,
      style: TextStyle(
        fontFamily: 'EBGaramond',
        fontSize: 36,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
  );
}
