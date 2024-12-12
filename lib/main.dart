import 'package:flutter/material.dart';
import 'job_postings_screen.dart';
import 'job_detail_screen.dart';
import 'application_screen.dart';

void main() {
  runApp(TieApp());
}

class TieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tie App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: JobPostingsScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
