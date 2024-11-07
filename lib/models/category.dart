import 'package:flutter/material.dart';

class Category {
  final String path;
  final String label;
  final String color;

  Category({
    required this.path, 
    required this.label,
    required this.color
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      path: json['path'],
      label: json['title'], 
      color: json['color']
    );
  }
}