import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter/Student.dart';

class StudentWidget extends StatelessWidget {
  const StudentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Student student = Provider.of<Student>(context);
    return Material(
      child: Text(
        student.name,
      ),
    );
  }
}
