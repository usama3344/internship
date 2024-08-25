import 'package:flutter/material.dart';
import 'package:internship/Provider/data_provider.dart';
import 'package:internship/data_list_screen.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
    ChangeNotifierProvider(
      create: (context) => DataProvider(),
    child: const Internship()));
}

class Internship extends StatelessWidget {
  const Internship({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DataListScreen(),
    );
  }
}