import 'package:flutter/material.dart';

class ARCardModel {
  final IconData icon;
  final String title;
  bool isActive = false;
  final String object;
  final bool isLocal;

  ARCardModel(this.icon, this.title, this.isActive, this.object, this.isLocal);
}
