import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.7,
        centerTitle: false,
        leadingWidth: 0,
        title: const Text(
          "Home",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 28),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Ringkasan",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset(
                    'assets/images/date-picker.png',
                    width: 163,
                    height: 32,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Image.asset('assets/images/roomchart.png'),
              const SizedBox(height: 24),
              const Text(
                "Statistik Pengunjung Website",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                "Periode Hari Senin (08.00 - 18.00",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff424242),
                ),
              ),
              const SizedBox(height: 29),
              Image.asset('assets/images/linechart.png'),
              const SizedBox(height: 29),
            ],
          ),
        ),
      ),
    );
  }
}
