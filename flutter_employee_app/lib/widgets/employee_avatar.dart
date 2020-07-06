import 'package:flutter/material.dart';

import 'dart:convert';

class EmployeeAvatar extends StatelessWidget {
  final String _photo;

  EmployeeAvatar(
    this._photo,
  );

  @override
  Widget build(BuildContext context) {
    return new Image.memory(
      base64Decode(_photo),
    );
  }
}
