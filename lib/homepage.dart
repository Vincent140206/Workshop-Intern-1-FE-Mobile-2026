import 'package:flutter/material.dart';
import 'package:workshop_1/halaman.dart';
import 'package:workshop_1/hands_on.dart';
import 'package:workshop_1/stateful.dart';
import 'package:workshop_1/stateless.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ini Homepage")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Stateless()),
                );
              },
              child: const Text("Stateless"),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Stateful()),
                );
              },
              child: const Text("Stateful"),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HalamanA()),
                );
              },
              child: const Text("Navigasi Halaman"),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HandsOn()),
                );
              },
              child: const Text("Hands On"),
            ),
          ],
        ),
      ),
    );
  }
}
