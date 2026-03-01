import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int like = 0;
  int comment = 0;
  int share = 0;

  void _like() {
    setState(() {
      like++;
    });
  }

  void _comment() {
    setState(() {
      comment++;
    });
  }

  void _share() {
    setState(() {
      share++;
    });
  }

  void _reset() {
    setState(() {
      like = 0;
      comment = 0;
      share = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile")),
      body: Container(
        color: const Color.fromARGB(255, 93, 140, 101),
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 30),
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'https://media.licdn.com/dms/image/v2/D4E03AQEt46magyNAfQ/profile-displayphoto-shrink_800_800/B4EZWmdHXpG0Ac-/0/1742254406450?e=1773878400&v=beta&t=OnfKSgc3jprbc4bb35Jouf8jqPIR_FVJEb_CP__OcTU',
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Spacer(),
                    const Text(
                      "Vincentius Dylan Wangsa Wijaya",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "245150401111001",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Front End Dev @Basic Computing Community",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "$like",
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text("Like"),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "$comment",
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text("Comment"),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "$share",
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text("Share"),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: _like,
                          child: const Text("Like"),
                        ),
                        ElevatedButton(
                          onPressed: _comment,
                          child: const Text("Comment"),
                        ),
                        ElevatedButton(
                          onPressed: _share,
                          child: const Text("Share"),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: _reset,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      child: const Text("Reset"),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
