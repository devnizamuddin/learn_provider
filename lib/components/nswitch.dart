import 'package:flutter/material.dart';

Widget CustomSwitch({required bool value, required Function(bool) onChanged}) {
  return Switch(value: value, onChanged: onChanged);
}
