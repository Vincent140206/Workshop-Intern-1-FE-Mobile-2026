import 'package:flutter/material.dart';

class Stateful extends StatefulWidget {
  const Stateful({super.key});

  @override
  State<Stateful> createState() => _StatefulState();
}

class _StatefulState extends State<Stateful> {
  int _angka = 0;

  void _tambahTanpaSetState() {
    _angka++;
    print("Angka di belakang layar (Tanpa setState): $_angka");
  }

  void _tambahDenganSetState() {
    setState(() {
      _angka++;
    });
    print("Angka di belakang layar (Dengan setState): $_angka");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stateful Widget + setState')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Nilai Angka Saat Ini:', style: TextStyle(fontSize: 20)),

            Text(
              '$_angka',
              style: const TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 40),

            ElevatedButton(
              onPressed: _tambahTanpaSetState,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
              ),
              child: const Text(
                'Tambah TANPA setState',
                style: TextStyle(color: Colors.white),
              ),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: _tambahDenganSetState,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: const Text(
                'Tambah DENGAN setState',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
