import 'package:flutter/material.dart';


BoxDecoration getTransitionalDecoration() {
  return const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [Color.fromARGB(248, 231, 206, 190), Color.fromARGB(200, 250, 250, 241)],
    ),
  );
}