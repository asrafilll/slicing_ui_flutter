import 'package:flutter/material.dart';

class RoomPage extends StatelessWidget {
  const RoomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Kamar",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 12),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Cari kamar sekarang",
                  suffixIcon: Icon(Icons.search),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                ),
              ),
              const SizedBox(height: 16),
              Image.asset('assets/images/menubar.png'),
              const SizedBox(height: 24),
              Image.asset('assets/images/room1.png'),
              const SizedBox(height: 24),
              Image.asset('assets/images/room2.png'),
            ],
          ),
        ),
      ),
    );
  }
}
