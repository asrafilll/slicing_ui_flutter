import 'package:flutter/material.dart';
import 'package:tugas_akhir_mas_panji/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leadingWidth: 0,
        title: const Text(
          "Masuk",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                "assets/images/signin.png",
                width: 250,
                height: 250,
              ),
            ),
            const SizedBox(height: 8),
            const Text("Email"),
            const SizedBox(height: 4),
            const TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 12),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6))),
              ),
            ),
            const SizedBox(height: 8),
            const Text("Kata Sandi"),
            const SizedBox(height: 4),
            const TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.visibility_off),
                contentPadding: EdgeInsets.symmetric(vertical: 12),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6))),
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              height: 44,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => const MainPage()));
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF3267E3),
                ),
                child: const Text("Masuk"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
