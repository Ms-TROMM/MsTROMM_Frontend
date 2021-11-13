import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ms_tromm/ui/authentication/login.dart';

void main() {
  runApp(MaterialApp(
    title: 'MS. TROMM',
    theme: ThemeData(
        fontFamily: 'Roboto'
    ),
    home: const LoginPage(),
  ));
}