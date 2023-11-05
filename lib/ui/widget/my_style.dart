
import 'package:flutter/material.dart';


myStyle(String text,Color color, double size, FontWeight fontWeight){
  return Text(text, style: TextStyle(
    color: color,
    fontSize: size,
    fontWeight: fontWeight,
  ),);
}