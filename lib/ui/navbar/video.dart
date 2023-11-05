import 'package:flutter/material.dart';
import 'package:goodycricket/ui/widget/my_style.dart';
class Video extends StatelessWidget {
  const Video({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade500,
        title: myStyle('Video', Colors.white, 22, FontWeight.w700),
      ),
      body: const Center(
        child: Text('Video'),
      ),
    );
  }
}