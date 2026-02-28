import 'package:flutter/material.dart';

class HalamanA extends StatelessWidget {
  const HalamanA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(title: const Text('Halaman A (Awal)')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HalamanB()),
                );
              },
              child: const Text('Push ke Halaman B'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HalamanB()),
                );
              },
              child: const Text('Push Replacement ke Halaman B'),
            ),
          ],
        ),
      ),
    );
  }
}

// ==========================================
// HALAMAN B (Kuning) - Halaman Tengah
// ==========================================
class HalamanB extends StatelessWidget {
  const HalamanB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(title: const Text('Halaman B (Tengah)')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HalamanC()),
                );
              },
              child: const Text('Push ke Halaman C'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
              child: const Text('Pop (Kembali)'),
            ),
          ],
        ),
      ),
    );
  }
}

// ==========================================
// HALAMAN C (Hijau) - Halaman Paling Atas
// ==========================================
class HalamanC extends StatelessWidget {
  const HalamanC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(title: const Text('Halaman C (Akhir)')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
              child: const Text('Pop ke Halaman B'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const HalamanA()),
                  (Route<dynamic> route) => false,
                );
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text(
                'Sapu Bersih (Balik ke A)',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
