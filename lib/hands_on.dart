import 'package:flutter/material.dart';
import 'package:workshop_1/profile.dart';

class HandsOn extends StatefulWidget {
  const HandsOn({super.key});

  @override
  State<HandsOn> createState() => _HandsOnState();
}

class _HandsOnState extends State<HandsOn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: AppBar(title: const Text("Hands On Workshop 1")),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          height: 400,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Image.asset('assets/images/FE.png', width: 100, height: 100),
              SizedBox(height: 40),
              Text(
                "Welcome Front End Internship",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 170, 105, 208),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Profile()),
                  );
                },
                child: Text("Mulai"),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
