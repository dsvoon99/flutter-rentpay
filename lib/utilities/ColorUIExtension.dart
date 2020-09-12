import 'package:flutter/material.dart';

extension ColorUIExtension on Color {
  Color mix(Color another, double amount) {
    return Color.lerp(this, another, amount);
  }
}
