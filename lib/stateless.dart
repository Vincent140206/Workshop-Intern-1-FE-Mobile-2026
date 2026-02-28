import 'package:flutter/material.dart';

class Stateless extends StatelessWidget {
  const Stateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ini Stateless Widget")),
      body: Center(
        child: Column(
          children: [
            Text("Stateless Widget"),
            SizedBox(height: 20),
            Image.network(
              'https://images.unsplash.com/photo-1592194996308-7b43878e84a6?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
