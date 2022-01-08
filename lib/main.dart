import 'package:flutter/material.dart';
import 'package:src/pages/index.dart';
import 'package:src/themes/color.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: primary),
      home: IndexPage(),
    ));
