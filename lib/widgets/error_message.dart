import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  final String message;
  const ErrorMessage({required this.message});

  @override
  Widget build(BuildContext context) {
    return Text(message);
  }
}