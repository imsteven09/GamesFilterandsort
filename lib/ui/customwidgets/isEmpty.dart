import 'package:flutter/material.dart';

class Isempty extends StatefulWidget {
  const Isempty({super.key});

  @override
  State<Isempty> createState() => _IsemptyState();
}

class _IsemptyState extends State<Isempty> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Center(
      child: Text('No data Found'),
    ));
  }
}
