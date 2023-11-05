import 'package:flutter/material.dart';
import 'package:goodycricket/ui/widget/my_style.dart';
class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green.shade600,
        title: myStyle('More', Colors.white, 22, FontWeight.w700),
      ),
      body: const Center(
        child: Text('More'),
      ),
    );
  }
}