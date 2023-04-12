import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.21,
      width: MediaQuery.of(context).size.width * 0.21,
      color: Colors.grey,
      child: Center(
        child: Column(
          children: [
            Text("KILLME")
          ],
        ),
      ),
    );
  }
  
}